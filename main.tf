terraform {
  required_version = ">= 1.0"
}

resource "local_file" "example" {
  content  = "Tracking Terraform changes with Git"
  filename = "${path.module}/example.txt"
}
