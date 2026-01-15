/*
Enviroment: Development
Description: Calls output from aws_deploy module to expose the bucket configuration.
*/
output "aws_deploy" {
    value = module.aws_deploy.bucket_config
}