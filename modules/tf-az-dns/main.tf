resource "azurerm_dns_zone" "public-dns-zone" {
  name                = var.pubdnszone_name
  resource_group_name = var.pubdnszone_resgrp_name
}

