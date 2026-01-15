/*
Environment: Development
Backend: Local
Description: This configuration sets up a local backend for Terraform state management in a development environment.
*/
terraform {
    backend "local" {
        path = "terraform.tfstate"
    }
}