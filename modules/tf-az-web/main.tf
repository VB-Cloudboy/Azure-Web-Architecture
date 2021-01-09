#------------------------------------------------
# Dedicated environment for Production Workloads
#------------------------------------------------

resource "azurerm_app_service_plan" "app-service-plan" {
  name                = var.appsvcplan_name
  location            = var.appsvcplan_location
  resource_group_name = var.appsvcplan_resgrp_name

  sku {
    tier = var.appsvcplan_tier
    size = var.appsvcplan_size
  }
}

#------------------------------------------------
# DotNet Web App Service
#------------------------------------------------

resource "azurerm_app_service" "web-app-service" {
  count               = length(var.azapp_svc) 
  name                = element(var.azapp_svc[count.index], 0)
  location            = var.appsvcplan_location
  resource_group_name = var.appsvcplan_resgrp_name
  app_service_plan_id = azurerm_app_service_plan.app-service-plan.id

  site_config {
    dotnet_framework_version = element(var.azapp_svc[count.index], 1)
    scm_type                 = element(var.azapp_svc[count.index], 2)
  }

  app_settings = {
    "Project_Id" = "01N24" # A key-value pair of App Settings. 
  }

}
