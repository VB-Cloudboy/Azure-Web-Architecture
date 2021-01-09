#--------------------------------------
# Declaring App Service Plan Variables
#--------------------------------------
# Variable for App Service Plan Name
variable "appsvcplan_name" {
    description = "Specifies the name of the App Service Plan component. Changing this forces a new resource to be created."
    type = string 
}
# Variable for App Service Plan Location
variable "appsvcplan_location" {
    description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created"
    type = string
    
}
# Variable for App Service Resource group name
variable "appsvcplan_resgrp_name" {
    description = "The name of the resource group in which to create the App Service Plan component."
    type = string
}
# Variable for App Service Plan tier
variable "appsvcplan_tier" {
    description = "Specifies the plan's pricing tier."
    type = string
}
# Variable for App Service Plan Size
variable "appsvcplan_size" {
    description = "Specifies the plan's instance size."
    type = string
}

#---------------------------------------------
# Declaring Dot-Net Web App Service Variables
#---------------------------------------------

# Variable for Dot-Net Web App Service Name
variable "azapp_svc" {
    description = "List of Dot-Net web apps representing app as a service, with value mapped as [0]Name, [1]dotnet framework version, [2]Source Control Mode Type"
    type = map
}

