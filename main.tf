module "vpc" {
  source = "./modules/vpc"

  vpc_cidr                = var.vpc_cidr
  vpc_name                = var.vpc_name
  igw_name                = var.igw_name

  public_route_table_name  = var.public_route_table_name

  public_subnets           = var.public_subnets
  private_subnets          = var.private_subnets
  private_route_table_names = var.private_route_table_names

  nat_eip_name = var.nat_eip_name
  nat_gw_name  = var.nat_gw_name
}
