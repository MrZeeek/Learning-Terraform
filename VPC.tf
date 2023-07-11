## First subnet in AWS using Terraform ##
resource "aws_vpc" "TerraformVPC" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "LearningTerraform"
  }
}

## First Subnet associated with Terraform VPC ##
resource "aws_subnet" "TerraformSubnet" {
  vpc_id     = aws_vpc.TerraformVPC.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "LearningTerraform"
  }
}