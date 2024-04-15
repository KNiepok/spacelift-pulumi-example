data "spacelift_current_space" "this" {}

resource "spacelift_aws_integration" "this" {
  name = "Pulumi EC2  integration"
  space_id = data.spacelift_current_space.this.id
  role_arn = var.aws_role_arn
}

resource "spacelift_blueprint" "this" {
  name     = "Pulumi EC2 Python scenario"
  state    = "PUBLISHED"
  space    = "root"
  labels   = ["testing-scenario"]
  template = file("${path.module}/blueprint.yaml")
}