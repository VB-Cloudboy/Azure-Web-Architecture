## Overview
---
Azure App Service is an HTTP-based service for hosting web applications, REST APIs, and mobile back ends. We can develop in our favorite language, be it .NET, .NET Core, Java, Ruby, Node.js, PHP, or Python. Applications run and scale with ease on both Windows and Linux-based environments.

###### *For more details on the Azure App Service please click on this [link](https://docs.microsoft.com/en-us/azure/app-service/overview)*

Azure App Service Resources terraform code defined in this module;

|#.No| Resources | Consideration Status |
| ---| ---       | ---                     |
|1|azurerm_app_service                                       |**Yes**|
|2|azurerm_app_service_certificate                           |No|
|3|azurerm_app_service_certificate_binding                   |No|
|4|azurerm_app_service_certificate_order                     |No|
|5|azurerm_app_service_custom_hostname_binding               |No|
|6|azurerm_app_service_environment                           |No|
|7|azurerm_app_service_hybrid_connection                     |No|
|8|azurerm_app_service_managed_certificate                   |No|
|9|azurerm_app_service_plan                                  |**Yes**|
|10|azurerm_app_service_slot                                 |No|
|11|azurerm_app_service_slot_virtual_network_swift_connection|No|
|12|azurerm_app_service_source_control_token                 |No|
|13|azurerm_app_service_virtual_network_swift_connection     |No|
|14|azurerm_function_app                                     |No|
|15|azurerm_function_app_slot                                |No|


### Introduction
---
Enables us to manages an App Service (within an App Service Plan).

### Arguments considered in module
---
- Name
- Resource Group Name
- App Service tier
- App Service type
- App Service location
- App Service Plan

### Exported Attributes
---
- `id` = The ID of App Service plan and Web App Service.
- `AppSvcPlan_Maximum_Workers` = The maximum number of workers supported with the App Service Plan's sku.


###### *For more details on the Azure App Service terraform code please click on this [link](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service)*
