#-------------------------------------
# OUTPUT ATTRIBUTE REFERENCE
#--------------------------------------
output "strgacct_id" {
  value = azurerm_storage_account.storage-account.*.id
  description = "List The storage account Resource ID."
}
output "strgacct_cntr_id" {
  value = azurerm_storage_container.storage-container.*.id
  description = "List The ID of the Storage Container."
}

output "strgacct_endpnt" {
  value = azurerm_storage_account.storage-account.primary_blob_endpoint
}