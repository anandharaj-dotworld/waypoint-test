project = "nginx-project"

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
