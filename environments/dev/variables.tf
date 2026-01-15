variable "config" {
    description = "S3 bucket configuration"
    type        = map(object({
        Name        = string
        Environment = string
    }))
}