terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  backend "remote" {
    hostname = "app.terraform.io"
    organization = "dakual"

    workspaces {
      name = "terraform-cloud"
    }
  }

  required_version = ">= 0.14.0"
}

provider "aws" {
  region = lookup(var.awsprops, "region")
}