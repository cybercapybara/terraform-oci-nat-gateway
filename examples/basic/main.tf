provider "oci" {}

module "nat_gateway" {
  source = "../.."

  compartment_id = var.compartment_id
  vcn_id         = var.vcn_id
  display_name   = "example-nat"

  freeform_tags = {
    Environment = "sandbox"
    ManagedBy   = "terraform"
  }
}

variable "compartment_id" {
  description = "Compartment OCID to deploy the example NAT gateway into."
  type        = string
}

variable "vcn_id" {
  description = "OCID of the VCN to attach the example NAT gateway to."
  type        = string
}

output "nat_gateway_id" {
  value = module.nat_gateway.id
}
