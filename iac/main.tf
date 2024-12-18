provider "aws" {
  region = var.aws_region
}

# Define variables
variable "aws_region" {
  description = "AWS region where the resources will be deployed"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
}

variable "instance_type" {
  description = "Type of EC2 instance"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-GHA-Instance"
  }
}
