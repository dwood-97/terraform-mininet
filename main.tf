# Create a docker image resource
# -> docker pull mininet:latest
resource "docker_image" "mininet_image" {
  name = "iwaseyusuke/mininet"
  # keep_locally = true
}

# resource "docker_image" "nginx_image" {
#   name = "nginx:latest"
#   # keep_locally = true
# }

# Create a docker container resource
# -> same as 'docker run --name mininet -p8080:80 -d mininet:latest'
resource "docker_container" "mininet_container" {
  name  = "mininet"
  image = docker_image.mininet_image.image_id
  stdin_open = true
  tty = true
  destroy_grace_seconds = 15

  ports {
    protocol = "tcp"
    external = "8080"
    internal = "80"
  }
}