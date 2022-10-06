project = "nginx-project"

# Labels can be specified for organizational purposes.
# labels = { "foo" = "bar" }
runner {
  enabled = true

  data_source "git" {
    url  = "https://github.com/anandharaj-dotworld/waypoint-test.git"
    path = "static"
  }
}

app "web" {
  build {
    use "docker" {
      	image = "test"
      	tag   = "test"
	disable_entrypoint = true
    }
  }

  deploy {
    use "docker" {
    }
  }
}
