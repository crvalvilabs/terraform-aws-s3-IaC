/*
Environment: Development
Description: This file configures the AWS providers for the development environment.
*/
provider "local" {
    alias = "local"
}

provider "aws" {
    alias = "aws"
    region = "us-east-1"
}