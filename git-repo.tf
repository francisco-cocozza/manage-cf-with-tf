resource "github_repository" "my-new-java-repo" {
  name        = "my-new-java-repo"
  description = "Test repo from Terraform"
  visibility = "public"
  template {
    owner      = "kostis-codefresh"
    repository = "sample-java-project"
  }
}