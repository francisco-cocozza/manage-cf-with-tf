resource "github_repository" "my-new-java-repo" {
  name        = var.my_app_name
  description = "Test repo from Terraform"
  visibility = "public"
  template {
    owner      = "kostis-codefresh"
    repository = "sample-java-project"
  }
}