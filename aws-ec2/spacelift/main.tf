// todo
data "spacelift_current_space" "this" {}

resource "spacelift_stack" "this" {
  name         = "Pulumi EC2 ${var.suffix}"
  repository   = "spacelift-pulumi-example"
  branch       = "main"
  project_root = "aws-ec2/pulumi"
  space_id     = data.spacelift_current_space.this.id

  pulumi {
    login_url  = var.pulumi_login_url
    stack_name = var.pulumi_stack_name
  }
}

resource "spacelift_stack_destructor" "this" {
  depends_on = [
  ]

  stack_id = spacelift_stack.this.id
}

resource "spacelift_run" "initial" {
  stack_id = spacelift_stack.this.id
}