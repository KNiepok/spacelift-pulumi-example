terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}

provider "spacelift" {}

variable "suffix" {}
variable "pulumi_login_url" {}
variable "pulumi_stack_name" {}
variable "aws_role_arn" {}