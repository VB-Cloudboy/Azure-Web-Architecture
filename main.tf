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


# Create a resource group
resource "azurerm_resource_group" "webapp-resgrp" {
  name     = "WebAppRG"
  location = "Central India"
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

/*

#--------------------------------------------------------------------------------
# VIRTUAL NETWORK SETUP WITH SUBNETS
#--------------------------------------------------------------------------------

module "vnet_app_snl" {
  source = "../../modules/azure-vnet"
  vrtl_net_name                     = var.vnet_snl_network_name
  vrtl_net_addrspc                  = var.vnet_snl_cidr_range
  vrtl_net_lctn                     = var.snl_resource_group_location
  vrtl_net_resgrp                   = var.snl_resource_group_name
  network_subnet                    = var.vnet_snl_subnet_details
  vnet_environment_name_tag         = var.snl_environment_name_tag

}

#--------------------------------------------------------------------------------
# SEARCH ENGINE SERIVCE SETUP
#--------------------------------------------------------------------------------

module "srch_svc_app_snl" {
  source = "../../modules/azure-search"
  srch_svc_name                     = var.srchsvc_snl_engine_name
  srch_svc_resgrp                   = var.snl_resource_group_name
  srch_svc_lctn                     = var.snl_resource_group_location
  srch_svc_sku                      = var.srchsvc_snl_sku_size
}

#--------------------------------------------------------------------------------
# REDIS CACHE SERVICE SETUP
#--------------------------------------------------------------------------------

module "redis_che_app_snl" {
  source = "../../modules/azure-redis"
  redis_che_svc_name                = var.redis_cache_snl_name
  redis_che_svc_lctn                = var.snl_resource_group_location
  redis_che_svc_resgrp              = var.snl_resource_group_name
  redis_che_svc_cpty                = var.redis_cache_snl_capacity
  redis_che_svc_fam                 = var.redis_cache_snl_family
  redis_che_svc_sku_size            = var.redis_cache_snl_sku_type
  redis_che_svc_ssl                 = var.redis_cache_snl_ssl_enable
  redis_che_svc_tls_ver             = var.redis_cache_snl_tls_version
  redis_che_fwrls                   = var.redis_cache_snl_firewall_rules
}

*/