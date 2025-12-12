# Terraform-VPC-Module
# AWS VPC Terraform Project

This Terraform project creates a **fully configured AWS Virtual Private Cloud (VPC)** using a **modular approach**. It automates the creation of public and private networking resources across multiple Availability Zones (AZs) and is designed for **reusability, scalability, and clarity**.



---

## Features

* Creates a **VPC** with a user-defined CIDR block.
* Deploys **2 public subnets** and **2 private subnets** across **2 Availability Zones**.
* Configures a **single Internet Gateway (IGW)** for public subnet internet access.
* Configures a **single NAT Gateway** for outbound internet access from private subnets.
* Creates **public and private route tables** and associates them with their respective subnets.
* Supports **custom naming** of VPC, subnets, NAT gateway, and route tables via `terraform.tfvars`.
* Modular design allows the VPC module to be **reused across multiple projects**.

---

## Project Structure

```text
root/
├─ main.tf              # Calls the VPC module
├─ variables.tf         # Root module variables
├─ outputs.tf           # Root module outputs
├─ providers.tf         # AWS provider configuration
├─ terraform.tfvars     # Input values for VPC, subnets, and gateways
└─ modules/
   └─ vpc/
      ├─ main.tf       # VPC, subnets, NAT, and route tables
      ├─ variables.tf  # Module input variables
      └─ outputs.tf    # Module outputs
