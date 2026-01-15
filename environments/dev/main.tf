/*
Environment: Development
Description: This configuration deploys AWS resources for the development environment using the aws_deploy module.
Defines the necessary variables and invokes the module with the appropriate configuration.
source: calls/modules/aws_deploy
config: store the values from the variable "config" defined in dev.tfvars
*/
module "aws_deploy" {
    source = "../../modules/aws_deploy"

    config = var.config
}