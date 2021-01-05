
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



/*

#-----------------------------------------------------------------------------
# VIRUAL NETWORK & SUBNET DETAILS
#-----------------------------------------------------------------------------

vnet_snl_network_name = "mainvnet01"
vnet_snl_cidr_range = ["10.0.0.0/16"]
vnet_snl_subnet_details  = {

    "0" = ["dmz-subnet-01", "10.0.0.0/28" ]
    "1" = ["mgmt-subnet-02", "10.0.0.16/28" ]
    "2" = ["web-subnet-03", "10.0.1.0/26" ]
}

#-----------------------------------------------------------------------------
# SEARCH SERVICE ENGINE DETAILS
#-----------------------------------------------------------------------------

srchsvc_snl_engine_name = "snl-srchsvc"
srchsvc_snl_sku_size    = "standard"

#-----------------------------------------------------------------------------
# REDIS CACHE SERVICE DETAILS
#-----------------------------------------------------------------------------

redis_cache_snl_name                = "vbapredistest"
redis_cache_snl_capacity            = 1
redis_cache_snl_family              = "C"
redis_cache_snl_sku_type            = "Standard"
redis_cache_snl_ssl_enable          = false
redis_cache_snl_tls_version         = "1.2"
redis_cache_snl_firewall_rules      = {

    "0" = ["AllowInbound", "10.0.0.7", "10.0.0.8" ]
}

*/