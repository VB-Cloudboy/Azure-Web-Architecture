## Overview
---
Azure SQL is a family of managed, secure, and intelligent products that use the SQL Server database engine in the Azure cloud. Azure SQL Database Support modern cloud applications on an intelligent, managed database service, that includes serverless compute.

###### *For more details on the Azure SQL please click on this [link](https://docs.microsoft.com/en-us/azure/azure-sql/azure-sql-iaas-vs-paas-what-is-overview)*

Azure SQL Resources terraform code defined in this module;

|#.No| Resources | Consideration Status |
| ---| ---       | ---                     |
|1|azurerm_sql_elasticpool                 |No|
|2|azurerm_sql_failover_group              |No|
|9|azurerm_sql_virtual_network_rule        |No|
|10|azurerm_sql_server                     |**Yes**|
|11|azurerm_sql_database                   |**Yes**|
|12|azurerm_sql_firewall_rule              |**Yes**|



### Introduction
---
Support modern cloud applications on an intelligent, managed database service, that includes serverless compute.

### Arguments considered in module
---
- Name
- Resource Group Name
- SQL Server tier
- SQL Server type
- SQL database name and type

### Exported Attributes
---
- `id` = The ID of the SQL Server.
- `fully_qualified_domain_name` - The fully qualified domain name of the Azure SQL Server (e.g. myCloudboyServerName.database.windows.net)


###### *For more details on the Azure SQL terraform code please click on this [link](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sql_server)*
