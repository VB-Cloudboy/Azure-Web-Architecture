#-------------------------------------------------
# Output Attribute Reference for App Service Plan
#-------------------------------------------------
output "appsvcplan_id" {
  value       = azurerm_app_service_plan.app-service-plan.*.id
  description = "The ID of the App Service Plan component"
}
output "appsvcplan_maximum_workers" {
  value       = azurerm_app_service_plan.app-service-plan.maximum_number_of_workers
  description = "The maximum number of workers supported with the App Service Plan's sku."
}

#-------------------------------------------------
# Output Attribute Reference for Web-App Service
#-------------------------------------------------

output "azappsvc_id" {
  value       = azurerm_app_service.web-app-service.*.id
  description = "The ID of the App Service."
  
}
