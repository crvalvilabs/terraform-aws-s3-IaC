/*
Module: aws_deploy
Description: Module to create S3 buckets based on provided configuration
Resource used: aws_s3_bucket
Name: aws_deploy_bucket
Requires: var.config (map of objects with Name and Environment attributes)
*/

resource "aws_s3_bucket" "aws_deploy_bucket" {
    for_each = var.config
    bucket = each.value.Name
    tags = {
        Name        = each.value.Name
        Environment = each.value.Environment
        }
}