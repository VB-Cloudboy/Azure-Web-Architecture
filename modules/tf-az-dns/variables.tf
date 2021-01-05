#---------------------------
# DECLARING FIXED VARIABLES
#---------------------------

# Variable for Resource Group Name
variable "pubdnszone_resgrp_name" {
    description = "Please enter the resource group name"
    type        = string
}

#-------------------------------------
# DECLARING PUBLIC DNS VARIABLES
#--------------------------------------

# Variable for DNS Zone Name
variable "pubdnszone_name" {
    description = "Please enter the public DNS zone name"
    type = string 
}