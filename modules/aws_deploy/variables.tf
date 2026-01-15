/*
Module: aws_deploy
Description: Contracts for S3 bucket configuration, its a map of objects with Name and Environment attributes
Name: config
*/
variable "config" {
    description = "S3 bucket configuration"
    type        = map(object({
        Name        = string
        Environment = string
    }))
}