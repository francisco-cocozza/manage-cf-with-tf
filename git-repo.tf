resource "github_repository" "my-new-repo" {
  name        = "my-new-repo"
  description = "Test repo from Terraform"
  visibility = "public"
  template {
    owner      = "kostis-codefresh"
    repository = "sample-java-project"
  }
}