output "azurerm-sqlser-id" {
  value = azurerm_sql_server.azurerm-sqlser.*.id
  description = "The SQL Server ID"
}
output "azurerm-sqlser-fqdn" {
  value = azurerm_sql_server.azurerm-sqlser.fully_qualified_domain_name
  description = "The fully qualified domain name of the Azure SQL Server (e.g. myServerName.database.windows.net)"
}
