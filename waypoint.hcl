project = "nginx-project"

# Labels can be specified for organizational purposes.
# labels = { "foo" = "bar" }
runner {
  enabled = true

  data_source "git" {
    url  = "https://github.com/anandharaj-dotworld/waypoint-test.git"
    path = "main"
  }
}

app "web" {
  build {
    use "docker" {}
  }

  deploy {
    use "docker" {
    }
  }
}
