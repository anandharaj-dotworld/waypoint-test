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
    "service" = "inputvars-go-app",
    "env"     = "dev"
  }
  build {
    use "pack" {}
    registry {
      use "docker" {
        image = var.image
        tag   = var.tag
        local = true
      }
    }
  }
  deploy {
    use "docker" {}
  }
}

variable "image" {
	default     = "waypoint-test/learn-inputvars-go"
	type        = string
	description = "Image name for the built image in the Docker registry."
}
variable "tag" {
	default     = "latest"
	type        = string
	description = "The tab for the built image in the Docker registry."
}
