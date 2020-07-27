variable "aws_region" {
  description = "The AWS region, like us-east-1"
  type        = string
}

variable "app_name" {
  description = "The domain_name input for terraform-aws-modules/acm/aws"
  type        = string
}

variable "parent_domain" {
  description = "The domain of which this app will be a subdomain"
  type        = string
}
