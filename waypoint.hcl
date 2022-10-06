project = "nginx-project"
runner {
  enabled = true

  data_source "git" {
    url  = "https://github.com/anandharaj-dotworld/waypoint-test.git"
    path = "main"
  }
}

app "web" {
  build {
    use "pack" {}
  }

  registry {
      use "docker" {
        image    = "test"
        tag      = "test_1"
        username = "test"
        password = "test"
        local    = false
      }
  }
}
