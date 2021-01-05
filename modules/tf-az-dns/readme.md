## Overview
---
Azure DNS is a hosting service for DNS domains that provides name resolution by using Microsoft Azure infrastructure. By hosting our domains in Azure, we can manage your DNS records by using the same credentials, APIs, tools, and billing as your other Azure services.

###### *For more details on the Azure DNS please click on this [link](https://docs.microsoft.com/en-us/azure/dns/dns-overview)*

Azure DNS Resources terraform code defined in this module;

|#.No| Resources | Consideration Status |
| ---| ---       | ---                     |
|1|azurerm_dns_a_record        |No|
|2|azurerm_dns_aaaa_record     |No|
|3|azurerm_dns_caa_record      |No|
|4|azurerm_dns_cname_record    |No|
|5|azurerm_dns_mx_record       |No|
|6|azurerm_dns_ns_record       |No|
|7|azurerm_dns_ptr_record      |No|
|8|azurerm_dns_srv_record      |No|
|9|azurerm_dns_txt_record      |No|
|10|azurerm_dns_zone           |**Yes**|


### Introduction
---
Enables us to manage DNS zones within Azure DNS. These zones are hosted on Azure's name servers to which we can delegate the zone from the parent domain.

### Arguments considered in module
---
- Name
- Resource Group Name
- Tags

### Exported Attributes
---
- `id` = The DNS Zone ID

###### *For more details on the Azure DNS terraform code please click on this [link](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_zone)*
