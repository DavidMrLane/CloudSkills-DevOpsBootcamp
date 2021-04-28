terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.7"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}

backend "remote" {
    organization = "DavidMrLane"

    workspaces {
      name = "CloudSkills-DevOpsBootcamp"
    }
  }

module "webserver" {
    source = "./ec2"

    servername = "terraformdemo"    
  
}