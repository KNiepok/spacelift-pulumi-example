terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}

provider "spacelift" {}
variable "aws_role_arn" {}