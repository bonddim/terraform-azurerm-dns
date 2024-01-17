resource "azurerm_dns_zone" "this" {
  name                = var.name
  resource_group_name = var.resource_group_name

  dynamic "soa_record" {
    for_each = try(var.records.soa.email, null) == null ? [] : [var.records.soa]

    content {
      email         = soa_record.value.email
      expire_time   = try(soa_record.value.expire_time, null)
      host_name     = try(soa_record.value.host_name, null)
      minimum_ttl   = try(soa_record.value.minimum_ttl, null)
      refresh_time  = try(soa_record.value.refresh_time, null)
      retry_time    = try(soa_record.value.retry_time, null)
      serial_number = try(soa_record.value.serial_number, null)
      ttl           = try(soa_record.value.ttl, null)
    }
  }

  tags = var.tags
}
