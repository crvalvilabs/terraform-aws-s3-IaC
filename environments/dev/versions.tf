/*
Environment: Development
Description: This file specifies the required Terraform version and provider versions for the development environment.
*/
terraform {
    required_version = ">= 1.14.3"

    required_providers {
         local = {
            source  = "hashicorp/local" 
            version = "~> 2.6.1"
        }
        aws = {
            source  = "hashicorp/aws"
            version = "~> 6.0"
        }
    }
}