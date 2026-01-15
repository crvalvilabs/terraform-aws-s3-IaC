/*
Module: aws_deploy
Description: Outputs for the AWS deployment module. It iterates over the input variable 'config' to produce a map of S3 bucket configurations including their names and environments.
Namme: bucket_config
*/
output "bucket_config" {
    description = "S3 bucket configuration used in the module"
    value       = {
        for key, bucket in var.config :
        key => {
            Name        = bucket.Name
            Environment = bucket.Environment
        }
    }
}