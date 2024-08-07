resource "codefresh_project" "example-project" {
  name = "myproject"

  tags = [
    "docker",
    "terraform-gen"
  ]
}

resource "codefresh_pipeline" "example-pipeline" {



  name    = "${codefresh_project.example-project.name}/my-pipeline"


  spec {


    spec_template {
      repo        = "kostis-codefresh/my-repo"
      path        = "./codefresh.yml"
      revision    = "main"
      context     = "github-1"
    }


    trigger {
      branch_regex  = "/.*/gi"
      context       = "github-1"
      description   = "Trigger for commits"
      disabled      = false
      events        = [
        "push.heads"
      ]
      modified_files_glob = ""
      name                = "commits"
      repo                = "kostis-codefresh/my-repo"
      type                = "git"
    }




  }
}
