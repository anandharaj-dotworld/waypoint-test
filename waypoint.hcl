project = "nginx-project"

runner {
  enabled = true

  data_source "git" {
    url  = "anandharaj-dotworld/waypoint-test.git"
    path = "main"
  }
}

app "web" {
  labels = {
    "service" = "example-ruby",
    "env" = "dev"
  }
  build {
    use "pack" {}
  }
  deploy {
    use "docker" {}
  }
}
