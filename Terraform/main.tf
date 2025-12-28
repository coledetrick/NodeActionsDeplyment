  provider "aws" {
    region = var.region
    profile = "cdtk"
  }

  resource "aws_instance" "automated_server" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name

    tags = {
      Name = "ColesAutomationExample"
    }
  }
