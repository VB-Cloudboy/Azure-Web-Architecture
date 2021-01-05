resource "azurerm_sql_server" "azurerm-sqlser" {
  name                         = var.azurerm_sqlser_name
  resource_group_name          = var.azurerm_sqlser_resgrp
  location                     = var.azurerm_sqlser_loc
  version                      = var.azurerm_sqlser_ver
  administrator_login          = var.azurerm_sqlser_admr_lgn
  administrator_login_password = var.azurerm_sqlser_admr_pwd
}

resource "azurerm_sql_database" "azurerm-sqldb" {
  count                             = length(var.azurerm_sqldb_paas)  
  name                              = element(var.azurerm_sqldb_paas[count.index], 0)
  resource_group_name               = var.azurerm_sqlser_resgrp
  location                          = var.azurerm_sqlser_loc
  server_name                       = azurerm_sql_server.azurerm-sqlser.name
  create_mode                       = element(var.azurerm_sqldb_paas[count.index], 1)
  edition                           = element(var.azurerm_sqldb_paas[count.index], 2)
  requested_service_objective_name  = element(var.azurerm_sqldb_paas[count.index], 3)

}


resource "azurerm_sql_firewall_rule" "azurerm-sqlfwrl" {
  count               = length(var.azurerm_sqlfwrls)
  name                = element(var.azurerm_sqlfwrls[count.index], 0)
  resource_group_name = var.azurerm_sqlser_resgrp
  server_name         = azurerm_sql_server.azurerm-sqlser.name
  start_ip_address    = element(var.azurerm_sqlfwrls[count.index], 1)
  end_ip_address      = element(var.azurerm_sqlfwrls[count.index], 2)
}

