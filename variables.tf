variable "compartment_id" {
  description = "OCID of the compartment in which to create the NAT gateway."
  type        = string
}

variable "vcn_id" {
  description = "OCID of the VCN the NAT gateway belongs to."
  type        = string
}

variable "display_name" {
  description = "Human-readable name for the NAT gateway."
  type        = string
}

variable "block_traffic" {
  description = "Whether to block all traffic through the NAT gateway."
  type        = bool
  default     = false
}

variable "public_ip_id" {
  description = "OCID of a reserved public IP to assign. Null lets Oracle allocate an ephemeral public IP."
  type        = string
  default     = null
}

variable "route_table_id" {
  description = "OCID of the route table the gateway uses. Null uses the VCN default."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "Free-form tags applied to the NAT gateway."
  type        = map(string)
  default     = {}
}

variable "defined_tags" {
  description = "Defined tags applied to the NAT gateway, keyed as \"namespace.key\"."
  type        = map(string)
  default     = {}
}
