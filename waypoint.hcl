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
        use "pack" {
            builder     = "heroku/buildpacks:20"
            disable_entrypoint = false
        }
    }

    deploy {
        use "docker" {}
    }
}
