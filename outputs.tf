output "resource" {
  value       = azurerm_dns_zone.this
  description = "Azure Public DNS Zone resource"
}

output "a" {
  value       = azurerm_dns_a_record.this
  description = "Azure Public DNS A records"

}

output "aaaa" {
  value       = azurerm_dns_aaaa_record.this
  description = "Azure Public DNS AAAA records"
}

output "caa" {
  value       = azurerm_dns_caa_record.this
  description = "Azure Public DNS CAA records"
}

output "cname" {
  value       = azurerm_dns_cname_record.this
  description = "Azure Public DNS CNAME records"
}

output "mx" {
  value       = azurerm_dns_mx_record.this
  description = "Azure Public DNS MX records"
}

output "ns" {
  value       = azurerm_dns_ns_record.this
  description = "Azure Public DNS NS records"
}

output "ptr" {
  value       = azurerm_dns_ptr_record.this
  description = "Azure Public DNS PTR records"
}

output "srv" {
  value       = azurerm_dns_srv_record.this
  description = "Azure Public DNS SRV records"
}

output "txt" {
  value       = azurerm_dns_txt_record.this
  description = "Azure Public DNS TXT records"
}
