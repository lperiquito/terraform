terraform {
  required_version = "1.6.6"
  backend "s3" {
    bucket                 = "periquito-tfstate"
    key                    = "periquito-terraform.tfstate"
    region                 = "eu-west-2"
    skip_region_validation = "true"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.30.0"
    }
    vsphere = {
      source  = "hashicorp/vsphere"
      version = "2.6.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}
