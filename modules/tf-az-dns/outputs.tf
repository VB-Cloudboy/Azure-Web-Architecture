#-------------------------------------
# OUTPUT ATTRIBUTE REFERENCE
#--------------------------------------
output "pubdnszone_id" {
  value = azurerm_dns_zone.public-dns-zone.*.id
  description = "List the DNS Zone ID"
}