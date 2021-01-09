## **Modules Information**

Every Terraform configuration has at least one module, known as its root module, which consists of the resources defined in the `.tf` files in the main working directory. A module is a container for multiple resources that are used together. Modules can be used to create lightweight abstractions, so that we can describe our infrastructure in terms of its architecture, rather than directly in terms of physical objects.

Re-usable modules are defined using all of the same configuration language concepts we use in root modules. for more details to create them we can refer this link [create-module](https://www.terraform.io/docs/modules/index.html)

### **1. Module Structure**

* README.md
* main.tf
* variables.tf
* outputs.tf  

Where each file details are outlined as; 
 
- **readme.md** will contain documentation describing how to use the module, in markdown format. 
- **main.tf** will contain the main set of configuration for the module.
- **variables.tf** will contain the variable definitions for the module. 
- **outputs.tf** Module outputs are made available to the configuration using the module, so they are often used to pass information about the parts of the  infrastructure defined in the module to other parts of current configuration.

### **2. Module Naming Convention**


| Terraform | Cloud-Provider | Function | Module Full-Name |
| --        | --             | --       | --               |
| terraform | azure | dns                   | tf-az-dns |
| terraform | azure | storage               | tf-az-strg|
| terraform | azure | app service plan      | tf-az-web | 
| terraform | azure | app service web app   | tf-az-web |
| terraform | azure | sql server            | tf-az-db  |
| terraform | azure | sql databases         | tf-az-db  |



### **3. Pre-requisites Executed**
- Resource group in azure account is created manually.
- Choice of region for deployment of azure resources is "Central India" 

### **4. Step By Step Terraform Code Creation Process**
1. Define terraform version and azure provider in `main.tf` file 
2. Define resource groups in `main.tf` file
3. Create files and update code in module folder named *tf-az-dns*
4. Define dns code in `main.tf`, `variables.tf` & `terraform.tfvars` file.
5. Create files and update code in module folder named *tf-az-strg*
6. Define dns code in `main.tf`, `variables.tf` & `terraform.tfvars` file. 
7. Create files and update code in module folder named *tf-az-db*
8. Define azure sql server and database code in `main.tf`, `variables.tf` & `terraform.tfvars` file.
7. Create files and update code in module folder named *tf-az-web*
8. Define azure app service plan and web app service code in `main.tf`, `variables.tf` & `terraform.tfvars` file.