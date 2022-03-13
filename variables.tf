variable "create_mod_network_vpc" {
  type = number
}

variable "mod_network_vpc_cidr_block" {
  type = string
}

variable "mod_network_vpc_instance_tenancy" {
  type = string
}

variable "stack_environment" {
  type = string
}
variable "stack_prefix" {
  type = string
}
variable "stack_cost_center" {
  type = string
}
variable "mod_network_vpc_enable_dns_support" {
  type = bool
}
variable "mod_network_vpc_enable_dns_hostnames" {
  type = bool
}

variable "mod_network_vpc_assign_generated_ipv6_cidr_block" {
  type = bool
}