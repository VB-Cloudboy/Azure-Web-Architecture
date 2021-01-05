
#----------------------------------------------------
# RESOURCE GROUP VARIABLE DECLARATION
#----------------------------------------------------

# Variable for Resource Group Name
variable "resource_group_name" {
    description = "Please enter the resource group name as per the design requirement"
    type = string 
}
# Variable for Resource Group Location
variable "resource_group_location" {
    description = "Please select the region in which resource should be deployed"   
}
# Variable for Application Envrironment Name Tag
variable "environment_name_tag" {
    description = "Please enter the Environment Tag Name" 
}


#----------------------------------------------------
# AZURE DOMAIN NAME SERVICES VARIABLE DECLARATION
#----------------------------------------------------

# Variable for DNS Zone Name
variable "dns_public_zone_name" {
    description = "Please enter the public DNS zone name as described in the design"
    type = string 
}

#-------------------------------------------------------------
# STORAGE ACCOUNT VARIABLE DECLARATION
#-------------------------------------------------------------


# Variable for Storage Account Name
variable "strg_account_name" {
    description = "Please enter the storage account name"
    type = string 
}
# Variable for Storage Account Tier
variable "strg_account_tier" {
    description = "Defines the Tier to use for this storage account"

}

# Variable for Storage Account Replication Type
variable "strg_account_type" {
    description = "Defines the type of replication to use for this storage account"

}

# Variable for Storage Account Kind
variable "strg_account_kind" {
    description = "Defines the Kind of storage account"
}

# Variable for Storage Access Tier
variable "strg_account_access_tier" {
    description = "Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts."

}

# Variable for Storage Account Location
variable "strg_account_location" {
    description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  
}

# Variable for Storage Container Name
variable "strg_container_name" {
    description = "The name of the Container which should be created within the Storage Account."
    #type = string
}

# Variable for Storage Container Access Type
variable "strg_container_access_type" {
    description = "The Access Level configured for this Container."

}

# Variable for Storage File Share Name 
variable "strg_share_name" {
    description = "The name of the share. Must be unique within the storage account where the share is located"
    type = string
}

# Variable for Storage File Share Quota Details 
variable "strg_share_quota" {
    description = "The maximum size of the share, in gigabytes. For Standard storage accounts, this must be greater than 0 and less than 5120 GB (5 TB)."
    type = string
}
# Variable for Application Team Name Tag
variable "strg_environment_name_tag" {
    description = "Please enter the Team Tag Name" 
}

#----------------------------------------------------
# AZURE MSSQL SERVER VARIABLE DECLARATION
#----------------------------------------------------

# Variable for Azure SQL Server Name
variable "sqlser_cb_name" {
    description = "The name of the SQL Server. This needs to be globally unique within Azure."    
    type        = string
}
# Variable for MSSQL Server location
variable "sqlser_cb_ver" {
    description = "The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server)."    
    type        = string
}

# Variable for Azure SQL Server Administrator Login
variable "sqlser_cb_admr_lgn" {
    description = "The administrator login name for the new server. Changing this forces a new resource to be created."    
    type        = string
}

# Variable for Azure SQL Server Administrator Password
variable "sqlser_cb_admr_pwd" {
    description = "The password is at least eight characters long.The password associated with the administrator_login user. Needs to comply with Azure's Password Policy"    
    type        = string
}

# Variable for Azure SQL Server Firewall Rules
variable "sqlser_cb_fwrls" {
    description = "List of objects representing firewall rules"    
    type        = map
}

# Variable for MSSQL Server Databases
variable "sqlser_cb_dbaas" {
    description = "List of databases representing db as a service"    
    type        = map
}


/*

#-------------------------------------------------------------
# VIRTUAL NETWORK & SUBNETS VARIABLE DECLARATION
#-------------------------------------------------------------

# Variable for Virtual Network Name 
variable "vnet_snl_network_name" {
    description = "The name of the virtual network. Changing this forces a new resource to be created." 
    type = string
}
# Variable for VNET Address Space CIDR range
variable "vnet_snl_cidr_range" {
    description = "The address space that is used the virtual network. You can supply more than one address space. Changing this forces a new resource to be created." 
    #type = string
}
# Variable for Subnets for VNET 
variable "vnet_snl_subnet_details" {
    description = "List of objects representing subnets, as defined below."
    type = map
}

#----------------------------------------------------
# SEARCH ENGINE SERVICE VARIABLE DECLARATION
#----------------------------------------------------

# Variable for Search Engine Service Name
variable "srchsvc_snl_engine_name" {
    description = "The Name which should be used for this Search Service. Changing this forces a new Search Service to be created."
    type = string  
}
# Variable for SKU's provision the Search Service 
variable "srchsvc_snl_sku_size" {
    description = "The SKU which should be used for this Search Service. Possible values are basic, free, standard, standard2 and standard3 Changing this forces a new Search Service to be created."
    type = string
}

#----------------------------------------------------
# REDIS CACHE SERVICE VARIABLE DECLARATION
#----------------------------------------------------

# Variable for Redis Cache Name
variable "redis_cache_snl_name" {
    description = "The name of the Redis instance. Changing this forces a new resource to be created."
    type = string  
}
# Variable for Redis Cache Capacity
variable "redis_cache_snl_capacity" {
    description = "The size of the Redis cache to deploy. Valid values for a SKU family of C (Basic/Standard) are 0, 1, 2, 3, 4, 5, 6, and for P (Premium) family are 1, 2, 3, 4."
    type = number
}
# Variable for Redis Cache Family
variable "redis_cache_snl_family" {
    description = "The SKU family/pricing group to use. Valid values are C (for Basic/Standard SKU family) and P (for Premium)"
    type = string
}
# Variable for Redis Cache SKU Size Type
variable "redis_cache_snl_sku_type" {
    description = "The SKU of Redis to use. Possible values are Basic, Standard and Premium."
    type = string
}
# Variable for Redis Cache SVC SSL port.
variable "redis_cache_snl_ssl_enable" {
    description = "Enable the non-SSL port (6379) - disabled by default."
    type = bool
}
# Variable for Redis Cache TLS version.
variable "redis_cache_snl_tls_version" {
    description = "he minimum TLS version. Defaults to 1.0."
    type = string
}
# Variable for Redis Cache Firewall rules.
variable "redis_cache_snl_firewall_rules" {
    description = "The name of the Firewall Rule. Changing this forces a new resource to be created."
    type = map
}

*/