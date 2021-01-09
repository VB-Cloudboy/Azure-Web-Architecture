
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
    sensitive   = true
}

# Variable for Azure SQL Server Administrator Password
variable "sqlser_cb_admr_pwd" {
    description = "The password is at least eight characters long.The password associated with the administrator_login user. Needs to comply with Azure's Password Policy"    
    type        = string
    sensitive   = true
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


#-------------------------------------------------------------
# AZURE WEB-APP-SERVICE VARIABLE DECLARATION
#-------------------------------------------------------------

# Variable for App Service Plan Name
variable "appservice_plan_name" {
    description = "Specifies the name of the App Service Plan component. Changing this forces a new resource to be created."
    type = string 
}
# Variable for App Service Plan tier
variable "appservice_plan_tier" {
    description = "Specifies the plan's pricing tier."
    type = string
}
# Variable for App Service Plan Size
variable "appservice_plan_size" {
    description = "Specifies the plan's instance size."
    type = string
}
# Variable for Dot-Net Web App Service Name
variable "appservice_winapp" {
    description = "List of Dot-Net web apps representing app as a service, with value mapped as [0]Name, [1]dotnet framework version, [2]Source Control Mode Type"
    type = map
}
