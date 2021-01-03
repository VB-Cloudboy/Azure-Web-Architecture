# Azure Basic Web Application

## **Summary**
The architecture shows proven practices for a web application that uses Azure App Service and Azure SQL Database. The architecture has other components like *Resource groups*, *App Service Plan & App*, *Deployment Slots*, *IP-Address*, *Azure DNS*, *Azure SQL Database*, *Logical Server*, *Azure Storage*, *Azure Active Directory* for more details on the each resources please click on this [link](https://docs.microsoft.com/en-us/azure/architecture/reference-architectures/app-service-web-app/basic-web-app#architecture)

<p align="center">
  <img alt="terraform logo" src="images/basic-web-app.png" />
  <h3 align="center">Reference Architecture of Basic Web Application </h3>
</p>










## **Module Information**

### **1. Module Structure**

* LICENSE
* README.md
* main.tf
* variables.tf
* outputs.tf  

Where each file details are outlined as; 

- **LICENSE** will contain the license under which the module is distributed. 
- **README.md** will contain documentation describing how to use the module, in markdown format. 
- **main.tf** will contain the main set of configuration for the module.
- **variables.tf** will contain the variable definitions for the module. 
- **outputs.tf** Module outputs are made available to the configuration using the module, so they are often used to pass information about the parts of the  infrastructure defined in the module to other parts of current configuration.

### **2. Module Naming Convention**


| Terraform | Cloud-Provider | Function | Module Full-Name |
| --        | --             | --       | --        |
| terraform | azure | dns      | tf-az-dns |
| terraform | azure | storage  | tf-az-strg|
| terraform | azure | app service plan | tf-az-web| 
| terraform | azure | app service web app| tf-az-web|
| terraform | azure | sql databases | tf-az-db|
| terraform | azure | virtual network | tf-az-vnet|
| terraform | azure | network security group | tf-az-nsg|


