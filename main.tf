
resource "aws_vpc" "mod_network_vpc" {
  count = var.create_mod_network_vpc ? 1: 0


  cidr_block = var.mod_network_vpc_cidr_block
  instance_tenancy = var.mod_network_vpc_instance_tenancy
  enable_dns_hostnames = var.mod_network_vpc_enable_dns_hostnames
  enable_dns_support = var.mod_network_vpc_enable_dns_support
  assign_generated_ipv6_cidr_block = var.mod_network_vpc_assign_generated_ipv6_cidr_block


  tags = {
    Name = join("", [var.stack_prefix, "_vpc"])
    Environment = var.stack_environment
    Role = join("", [var.stack_prefix, "_network"])
    Cost_Center = var.stack_cost_center
  }

}