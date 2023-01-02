terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    region = var.environment.region

    assume_role {
        role_arn = var.environment.admin_role_arn
    }
}

module "iam" {
    source = "./iam"
}