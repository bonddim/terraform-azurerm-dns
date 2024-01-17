# public_zone

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.80 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.80 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_dns_a_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_a_record) | resource |
| [azurerm_dns_aaaa_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_aaaa_record) | resource |
| [azurerm_dns_caa_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_caa_record) | resource |
| [azurerm_dns_cname_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_cname_record) | resource |
| [azurerm_dns_mx_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_mx_record) | resource |
| [azurerm_dns_ns_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_ns_record) | resource |
| [azurerm_dns_ptr_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_ptr_record) | resource |
| [azurerm_dns_srv_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_srv_record) | resource |
| [azurerm_dns_txt_record.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_txt_record) | resource |
| [azurerm_dns_zone.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | (Required) Public DNS zone name. | `string` | n/a | yes |
| <a name="input_records"></a> [records](#input\_records) | DNS Zone records map:<pre>a     - (Optional) List with DNS A records<br>aaaa  - (Optional) List with DNS AAAA records<br>caa   - (Optional) List with DNS CAA records<br>cname - (Optional) List with DNS CNAME records<br>mx    - (Optional) List with DNS MX records<br>ns    - (Optional) List with DNS NS records<br>ptr   - (Optional) List with DNS PTR records<br>srv   - (Optional) List with DNS SRV records<br>txt   - (Optional) List with DNS TXT records<br>soa   - (Optional) Map with DNS Zone SOA record configuration</pre>Refer to terraform documentation for supported attributes:<br>- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_zone<br>- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_a_record<br>- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_aaaa_record<br>- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_caa_record<br>- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_cname_record<br>- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_mx_record<br>- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_ns_record<br>- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_ptr_record<br>- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_srv_record<br>- https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_txt_record | `any` | `{}` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group in which to create resources. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the Public DNS zone. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_a"></a> [a](#output\_a) | Azure Public DNS A records. |
| <a name="output_aaaa"></a> [aaaa](#output\_aaaa) | Azure Public DNS AAAA records. |
| <a name="output_caa"></a> [caa](#output\_caa) | Azure Public DNS CAA records. |
| <a name="output_cname"></a> [cname](#output\_cname) | Azure Public DNS CNAME records. |
| <a name="output_mx"></a> [mx](#output\_mx) | Azure Public DNS MX records. |
| <a name="output_ns"></a> [ns](#output\_ns) | Azure Public DNS NS records. |
| <a name="output_ptr"></a> [ptr](#output\_ptr) | Azure Public DNS PTR records. |
| <a name="output_resource"></a> [resource](#output\_resource) | Azure Public DNS Zone resource. |
| <a name="output_srv"></a> [srv](#output\_srv) | Azure Public DNS SRV records. |
| <a name="output_txt"></a> [txt](#output\_txt) | Azure Public DNS TXT records. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
