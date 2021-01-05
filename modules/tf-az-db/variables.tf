#--------------------------------
# DECLARING MSSQL SERVER DETAILS
#--------------------------------

# Variable for MSSQL Server Name
variable "azurerm_sqlser_name" {
    description = "The name of the SQL Server. This needs to be globally unique within Azure."    
    type        = string
}

# Variable for MSSQL Server Resource Group
variable "azurerm_sqlser_resgrp" {
    description = "The name of the resource group in which to create the SQL Server."    
    type        = string
}

# Variable for MSSQL Server location
variable "azurerm_sqlser_loc" {
    description = " Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."    
    type        = string
}

# Variable for MSSQL Server location
variable "azurerm_sqlser_ver" {
    description = "The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server)."    
    type        = string
}

# Variable for MSSQL Server Administrator Login
variable "azurerm_sqlser_admr_lgn" {
    description = "The administrator login name for the new server. Changing this forces a new resource to be created."    
    type        = string
}

# Variable for MSSQL Server Administrator Password
variable "azurerm_sqlser_admr_pwd" {
    description = "The password is at least eight characters long.The password associated with the administrator_login user. Needs to comply with Azure's Password Policy"    
    type        = string
}

# Variable for MSSQL Server Databases
variable "azurerm_sqldb_paas" {
    description = "List of databases representing db as a service, as defined below."    
    type        = map
}

# Variable for MSSQL Server Firewall Rules
variable "azurerm_sqlfwrls" {
    description = "List of objects representing firewall rules, as defined below."    
    type        = map
}