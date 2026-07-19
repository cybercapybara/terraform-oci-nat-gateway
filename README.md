# terraform-oci-nat-gateway

Terraform module that manages an [Oracle Cloud Infrastructure](https://www.oracle.com/cloud/)
NAT gateway inside an existing VCN, letting instances in private subnets reach the
internet for outbound-only traffic.

## Usage

```hcl
module "nat_gateway" {
  source = "github.com/moveeeax/terraform-oci-nat-gateway"

  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = "prod-nat"

  freeform_tags = {
    Environment = "production"
    ManagedBy   = "terraform"
  }
}
```

A runnable example lives in [`examples/basic`](examples/basic).

## Requirements

| Name      | Version  |
|-----------|----------|
| terraform | >= 1.5   |
| oci       | >= 5.0   |

## Inputs

| Name             | Description                                                          | Type          | Default | Required |
|------------------|----------------------------------------------------------------------|---------------|---------|:--------:|
| `compartment_id` | OCID of the compartment in which to create the NAT gateway.          | `string`      | n/a     |   yes    |
| `vcn_id`         | OCID of the VCN the NAT gateway belongs to.                          | `string`      | n/a     |   yes    |
| `display_name`   | Human-readable name for the NAT gateway.                             | `string`      | n/a     |   yes    |
| `block_traffic`  | Whether to block all traffic through the NAT gateway.               | `bool`        | `false` |    no    |
| `public_ip_id`   | Reserved public IP OCID to assign. Null allocates an ephemeral one.  | `string`      | `null`  |    no    |
| `route_table_id` | Route table OCID the gateway uses. Null uses the VCN default.        | `string`      | `null`  |    no    |
| `freeform_tags`  | Free-form tags applied to the NAT gateway.                           | `map(string)` | `{}`    |    no    |
| `defined_tags`   | Defined tags applied to the gateway, keyed `namespace.key`.          | `map(string)` | `{}`    |    no    |

## Outputs

| Name            | Description                                            |
|-----------------|--------------------------------------------------------|
| `id`            | OCID of the NAT gateway.                               |
| `nat_ip`        | Public IP the NAT gateway uses for outbound traffic.  |
| `block_traffic` | Whether the NAT gateway is currently blocking traffic.|
| `state`         | Lifecycle state of the NAT gateway.                   |

## License

[MIT](LICENSE)
