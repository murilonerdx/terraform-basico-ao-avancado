terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.49.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      owner      = "danielgil"
      managed-by = "terraform"
    }
  }
}

provider "azurerm" {
  features {}
}