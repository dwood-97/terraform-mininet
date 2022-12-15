### mininet_module/main.tf ###

# Create a docker image resource
# -> docker pull mininet:latest

resource "docker_image" "mininet_image" {
  name = var.image_name
  keep_locally = var.keep_locally
}

# Create a docker container resource
# -> same as 'docker run --name mininet -p8080:80 -d mininet:latest'
resource "docker_container" "mininet_container" {
  name                  = var.container_name
  image                 = docker_image.mininet_image.image_id
  stdin_open            = var.stdin_open
  tty                   = var.tty
  destroy_grace_seconds = var.destroy_grace_seconds
  ports {
    internal = var.internal_container_port
    external = var.external_container_port
    protocol = var.protocol_container_port
  }
}

