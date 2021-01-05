  
#---------------------------
# DECLARING FIXED VARIABLES
#---------------------------

# Variable for Resource Group Name
variable "strgacct_resgrp_name" {
    description = "Please enter the resource group name"
    type        = string
}
# Variable for Application Team Name Tag
variable "strg_environment_name_tag" {
    description = "Please enter the Team Tag Name" 
}


#-------------------------------------
# DECLARING STORAGE ACCOUNT VARIABLES
#--------------------------------------

# Variable for Storage Account Name
variable "strgacct_name" {
    description = "Please enter the storage account name"
    type = string 
}
# Variable for Storage Account Tier
variable "strgacct_tier" {
    description = "Defines the Tier to use for this storage account"
    type = string
    default = "Standard"
}

# Variable for Storage Account Replication Type
variable "strgacct_type" {
    description = "Defines the type of replication to use for this storage account"
    type = string
    default = "LRS"
}

# Variable for Storage Account Kind
variable "strgacct_kind" {
    description = "Defines the Kind of storage account"
    type = string
    default = "LRS"
}

# Variable for Storage Access Tier
variable "strgacct_access_tier" {
    description = "Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts."
    type = string
    default = "Hot"
}

# Variable for Storage Account Location
variable "strgacct_location" {
    description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."   
}

# Variable for Storage Container Name
variable "strg_cntr_name" {
    description = "The name of the Container which should be created within the Storage Account."
    type = list(string)
}

# Variable for Storage Container Access Type
variable "strg_cntr_access_type" {
    description = "The Access Level configured for this Container."
    type = string
    default = "private"
}

# Variable for Storage File Share Name 
variable "strgshr_name" {
    description = "The name of the share. Must be unique within the storage account where the share is located"
    type = string
}
# Variable for Storage File Share Quota Details 
variable "strgshr_quota" {
    description = "The maximum size of the share, in gigabytes. For Standard storage accounts, this must be greater than 0 and less than 5120 GB (5 TB)."
    type = string
}

