
#-----------------------------------------------------------------------------
# GENERAL
#----------------------------------------------------------------------------

resource_group_name         = "WebAppRG"
resource_group_location     = "Central India"
environment_name_tag        = "development"


#-----------------------------------------------------------------------------
#  AZURE DOMAIN NAME SERVICES DETAILS
#-----------------------------------------------------------------------------

dns_public_zone_name        = "cloudboy.tech"

#-----------------------------------------------------------------------------
# STORAGE DETAILS
#-----------------------------------------------------------------------------

strg_account_name           = "cloudboystrg01"
strg_account_tier           = "Standard"
strg_account_type           = "LRS"
strg_account_kind           = "StorageV2"
strg_account_access_tier    = "Hot"
strg_account_location       = "Central India"
strg_container_name         = ["cbsa01ctr01","cbsa01ctr02","cbsa01ctr03"]
strg_container_access_type  = "private"
strg_environment_name_tag   = "webapp-dev"
strg_share_name             = "appshare"
strg_share_quota            = "10"

#-----------------------------------------------------------------------------
# SQL-SERVER DETAILS
#-----------------------------------------------------------------------------
sqlser_cb_name              = "cbsqlserdev01"
sqlser_cb_ver               = "12.0"
sqlser_cb_admr_lgn          = "cloudboy-admin"
sqlser_cb_admr_pwd          = "Avengers@2021"


# List all mssql server firewall rules
sqlser_cb_fwrls = {

    "0" = ["Allow access to Azure services", "0.0.0.0", "0.0.0.0"]

}

# List all databases created in azure sqlserver
sqlser_cb_dbaas = {

    "0" = ["Cloudboy-db01", "Default", "Premium", "P1","sql-cbdb01-dev"]
    "1" = ["Cloudboy-db02", "Default", "Premium", "P1","sql-cbdb02-dev"]

}


#-----------------------------------------------------------------------------
# AZURE APP-SERVICE-PLAN & WEB-APP
#-----------------------------------------------------------------------------

appservice_plan_name = "cloudboy-webappplan"
appservice_plan_tier ="Standard"
appservice_plan_size ="S3"

appservice_winapp  = {

    "0" = ["cbwebapp01", "v4.0", "LocalGit" ]
    "1" = ["cbwebapp02", "v5.0", "LocalGit" ]
}


