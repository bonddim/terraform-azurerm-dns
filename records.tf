resource "azurerm_dns_a_record" "this" {
  for_each = { for record in try(var.records.a, []) : record.name => record }

  resource_group_name = azurerm_dns_zone.this.resource_group_name
  zone_name           = azurerm_dns_zone.this.name
  name                = lower(each.value.name)
  records             = try(each.value.records, null)
  target_resource_id  = try(each.value.target_resource_id, null)
  ttl                 = try(each.value.ttl, 300)

  lifecycle {
    precondition {
      condition     = try(each.value.records, null) == null || try(each.value.target_resource_id, null) == null
      error_message = "Each A record must either have 'record' or 'target_resource_id', but not both."
    }
  }
}

resource "azurerm_dns_aaaa_record" "this" {
  for_each = { for record in try(var.records.aaaa, []) : record.name => record }

  resource_group_name = azurerm_dns_zone.this.resource_group_name
  zone_name           = azurerm_dns_zone.this.name
  name                = lower(each.value.name)
  records             = try(each.value.records, null)
  target_resource_id  = try(each.value.target_resource_id, null)
  ttl                 = try(each.value.ttl, 300)

  lifecycle {
    precondition {
      condition     = try(each.value.records, null) == null || try(each.value.target_resource_id, null) == null
      error_message = "Each AAAA record must either have 'record' or 'target_resource_id', but not both."
    }
  }
}

resource "azurerm_dns_caa_record" "this" {
  for_each = { for record in try(var.records.caa, []) : record.name => record }

  resource_group_name = azurerm_dns_zone.this.resource_group_name
  zone_name           = azurerm_dns_zone.this.name
  name                = each.value.name
  ttl                 = try(each.value.ttl, 300)

  dynamic "record" {
    for_each = each.value.record

    content {
      flags = record.value.flags
      tag   = record.value.tag
      value = record.value.value
    }
  }
}

resource "azurerm_dns_cname_record" "this" {
  for_each = { for record in try(var.records.cname, []) : record.name => record }

  resource_group_name = azurerm_dns_zone.this.resource_group_name
  zone_name           = azurerm_dns_zone.this.name
  name                = lower(each.value.name)
  record              = try(each.value.record, null)
  target_resource_id  = try(each.value.target_resource_id, null)
  ttl                 = try(each.value.ttl, 300)

  lifecycle {
    precondition {
      condition     = try(each.value.record, null) == null || try(each.value.target_resource_id, null) == null
      error_message = "Each A record must either have 'record' or 'target_resource_id', but not both."
    }
  }
}

resource "azurerm_dns_mx_record" "this" {
  for_each = { for record in try(var.records.mx, []) : record.name => record }

  resource_group_name = azurerm_dns_zone.this.resource_group_name
  zone_name           = azurerm_dns_zone.this.name
  name                = lower(each.value.name)
  ttl                 = try(each.value.ttl, 300)

  dynamic "record" {
    for_each = each.value.record
    content {
      preference = record.value.preference
      exchange   = record.value.exchange
    }
  }
}

resource "azurerm_dns_ns_record" "this" {
  for_each = { for record in try(var.records.ns, []) : record.name => record }

  resource_group_name = azurerm_dns_zone.this.resource_group_name
  zone_name           = azurerm_dns_zone.this.name
  name                = lower(each.value.name)
  records             = each.value.records
  ttl                 = try(each.value.ttl, 300)
}

resource "azurerm_dns_ptr_record" "this" {
  for_each = { for record in try(var.records.ptr, []) : record.name => record }

  resource_group_name = azurerm_dns_zone.this.resource_group_name
  zone_name           = azurerm_dns_zone.this.name
  name                = lower(each.value.name)
  records             = each.value.records
  ttl                 = try(each.value.ttl, 300)
}

resource "azurerm_dns_srv_record" "this" {
  for_each = { for record in try(var.records.srv, []) : record.name => record }

  resource_group_name = azurerm_dns_zone.this.resource_group_name
  zone_name           = azurerm_dns_zone.this.name
  name                = lower(each.value.name)
  ttl                 = try(each.value.ttl, 300)

  dynamic "record" {
    for_each = each.value.record

    content {
      priority = record.value.priority
      weight   = record.value.weight
      port     = record.value.port
      target   = record.value.target
    }
  }
}

resource "azurerm_dns_txt_record" "this" {
  for_each = { for record in try(var.records.txt, []) : record.name => record }

  resource_group_name = azurerm_dns_zone.this.resource_group_name
  zone_name           = azurerm_dns_zone.this.name
  name                = lower(each.value.name)
  ttl                 = try(each.value.ttl, 300)

  dynamic "record" {
    for_each = each.value.record
    content {
      value = record.value
    }
  }
}
