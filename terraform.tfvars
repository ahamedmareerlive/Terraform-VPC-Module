vpc_cidr = "10.0.0.0/16"
vpc_name = "my-vpc"
igw_name = "my-igw"

public_route_table_name = "public-rt"

public_subnets = {
  public1 = { cidr = "10.0.1.0/24", az = "us-east-1a", name = "public-subnet-1" }
  public2 = { cidr = "10.0.2.0/24", az = "us-east-1b", name = "public-subnet-2" }
}

private_subnets = {
  private1 = { cidr = "10.0.3.0/24", az = "us-east-1a", name = "private-subnet-1" }
  private2 = { cidr = "10.0.4.0/24", az = "us-east-1b", name = "private-subnet-2" }
}

private_route_table_names = {
  private1 = "private-rt-1"
  private2 = "private-rt-2"
}

nat_eip_name = "nat-eip"
nat_gw_name  = "nat-gateway"
