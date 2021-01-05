## Overview
---
The Azure Storage platform is Microsoft's cloud storage solution for modern data storage scenarios. Core storage services offer a massively scalable object store for data objects, disk storage for Azure virtual machines (VMs), a file system service for the cloud, a messaging store for reliable messaging, and a NoSQL store.

###### *For more details on the Azure Storage please click on this [link](https://docs.microsoft.com/en-us/azure/storage/common/storage-introduction?toc=/azure/storage/blobs/toc.json)*

Azure DNS Resources terraform code defined in this module;

|#.No| Resources | Consideration Status |
| ---| ---       | ---                     |
|1|azurerm_hpc_cache                            |No|
|2|azurerm_hpc_cache_nfs_target                 |No|
|3|azurerm_hpc_cache_blob_target                |No|
|4|azurerm_storage_account_customer_managed_key |No|
|5|azurerm_storage_account_network_rules        |No|
|6|azurerm_storage_blob                         |No|
|7|azurerm_storage_data_lake_gen2_filesystem    |No|
|8|azurerm_storage_data_lake_gen2_path          |No|
|9|azurerm_storage_queue                        |No|
|10|azurerm_storage_account                     |**Yes**|
|11|azurerm_storage_share                       |**Yes**|
|12|azurerm_storage_container                   |**Yes**|
|13|azurerm_storage_encryption_scope            |No|
|14|azurerm_storage_management_policy           |No|
|15|azurerm_storage_share_directory             |No|
|16|azurerm_storage_share_file                  |No|
|17|azurerm_storage_sync                        |No|
|18|azurerm_storage_sync_cloud_endpoint         |No|
|19|azurerm_storage_sync_group                  |No|
|20|azurerm_storage_table                       |No|
|21|azurerm_storage_table_entity                |No|


### Introduction
---
Enables us to manage DNS zones within Azure DNS. These zones are hosted on Azure's name servers to which we can delegate the zone from the parent domain.

### Arguments considered in module
---
- Name
- Resource Group Name
- Storage tier
- Storage type
- Storage kind
- Storage location
- Storage container name
- Storage container access type
- Storage share name & quota

### Exported Attributes
---
- `id` = The ID of the Storage Account.
- `primary_blob_endpoint` = The endpoint URL for blob storage in the primary location.
- `id` = The ID of the Storage Container.


###### *For more details on the Azure Storage terraform code please click on this [link](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account)*
