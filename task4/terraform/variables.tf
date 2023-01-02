variable "environment" {
    description = "Basic parameters for AWS"
    default = {
        name = "sania-development"
        region = "us-east-1"
        admin_role_arn = "some arn"
    }
}