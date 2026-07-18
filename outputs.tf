output "id" {
  description = "OCID of the NAT gateway."
  value       = oci_core_nat_gateway.this.id
}

output "nat_ip" {
  description = "Public IP address the NAT gateway uses for outbound traffic."
  value       = oci_core_nat_gateway.this.nat_ip
}

output "block_traffic" {
  description = "Whether the NAT gateway is currently blocking traffic."
  value       = oci_core_nat_gateway.this.block_traffic
}

output "state" {
  description = "Lifecycle state of the NAT gateway."
  value       = oci_core_nat_gateway.this.state
}
