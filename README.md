# Azure Basic Web Application




## Module Information

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


| Terraform | Cloud-Provider | Function | Full-Name |
| --        | --             | --       | --        |
| terraform | azure          | dns      | tf-az-dns |
|  |  | | 

