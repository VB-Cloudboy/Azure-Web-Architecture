#============================================================================================================
# ---INTRODUCTION---
# This architecture focuses on azure services which are required to host basic web application and the code 
# outlined focuses on the infrastructure components. The goal is to understand how various Azure services fit 
# together and deployed using hashicorp language - Terraform. 
#
# ---AUTHOR---
# Vijay Borkar 
#==============================================================================================================

# ------------------------------------------------------------------------------
# TERRAFORM & PROVIDER SETUP
# ------------------------------------------------------------------------------
terraform {
  required_version = "~> 0.14.0"
  required_providers {
      azuresb = {
        source  = "hashicorp/azurerm" 
        version = "=2.40.0"
      }
  }
}

provider "azuresb" {
    features {}
}


# Fetch resource group details
data "azurerm_resource_group" "webapp-resgrp" {
  name     = "WebAppRG"
}


#--------------------------------------------------------------------------------
# AZURE DNS SETUP 
#--------------------------------------------------------------------------------

# 1 - AZURE PUBLIC DNS ZONE
module "public_dns_app" {
  source                   = "./modules/tf-az-dns"
  pubdnszone_name          = var.dns_public_zone_name
  pubdnszone_resgrp_name   = var.resource_group_name

}

#----------------------------------------------------------------------------------
# STORAGE ACCOUNT SETUP
#----------------------------------------------------------------------------------
module "strg_acct_app" {
  source = "./modules/tf-az-strg"
  strgacct_name               = var.strg_account_name
  strgacct_resgrp_name        = var.resource_group_name
  strgacct_tier               = var.strg_account_tier
  strgacct_type               = var.strg_account_type
  strgacct_kind               = var.strg_account_kind
  strgacct_access_tier        = var.strg_account_access_tier
  strgacct_location           = var.resource_group_location
  strg_cntr_name              = var.strg_container_name
  strg_cntr_access_type       = var.strg_container_access_type
  strg_environment_name_tag   = var.environment_name_tag
  strgshr_name                = var.strg_share_name
  strgshr_quota               = var.strg_share_quota

}

#----------------------------------------------------------------------------------
# AZURE SQL & DATABASE SETUP 
#----------------------------------------------------------------------------------
module "sqlser_app" {
  source = "./modules/tf-az-db"
  azurerm_sqlser_name                        = var.sqlser_cb_name
  azurerm_sqlser_resgrp                      = var.resource_group_name
  azurerm_sqlser_loc                         = var.resource_group_location
  azurerm_sqlser_ver                         = var.sqlser_cb_ver
  azurerm_sqlser_admr_lgn                    = var.sqlser_cb_admr_lgn
  azurerm_sqlser_admr_pwd                    = var.sqlser_cb_admr_pwd
  azurerm_sqlfwrls                           = var.sqlser_cb_fwrls
  azurerm_sqldb_paas                         = var.sqlser_cb_dbaas
}



#--------------------------------------------------------------------------------
# AZURE WEB-APP SERVICE SETUP WITH APP-SERVICE-PLAN 
#--------------------------------------------------------------------------------

module "ase_webapp" {
  source = "./modules/tf-az-web"
  appsvcplan_name                     = var.appservice_plan_name
  appsvcplan_location                 = var.resource_group_location
  appsvcplan_resgrp_name              = var.resource_group_name
  appsvcplan_tier                     = var.appservice_plan_tier
  appsvcplan_size                     = var.appservice_plan_size
  azapp_svc                           = var.appservice_winapp

}