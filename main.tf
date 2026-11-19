terraform {
  required_version = ">= 1.0"
}

resource "local_file" "example" {
  content  = "Updated Terraform config tracked in a feature branch PR"
  filename = "${path.module}/example.txt"
}

resource "local_file" "changelog" {
  content  = "Added changelog resource for version control review"
  filename = "${path.module}/changelog.txt"
}

output "example_file_path" {
  description = "path to the primary generated file"
  value       = local_file.example.filename
}

output "changelog_file_path" {
  description = "path to the changelog file"
  value       = local_file.changelog.filename
}
