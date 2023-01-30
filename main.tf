terraform {
  required_providers {
    codefresh = {
      source = "codefresh-io/codefresh"
      version = "0.2.0"
    }
  }
}


provider "codefresh" {
  api_url = var.api_url
  token = var.token
}

resource "codefresh_project" "test" {
  name = "myproject"

  tags = [
    "docker",
  ]
}