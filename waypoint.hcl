project = "nginx-project"

app "web" {
  build {
        use "pack" {
            builder     = "heroku/buildpacks:20"
            disable_entrypoint = false
        }
    }
  registry {}

    deploy {
        use "docker" {}
    }
}
