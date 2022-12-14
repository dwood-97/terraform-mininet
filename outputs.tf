output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.mininet_image.id
}

output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.mininet_container.id
}

output "container_ip" {
  description = "IP address of the Docker container"
  value       = docker_container.mininet_container.ip_address
}

output "container_port" {
  description = "Port of the Docker container"
  value       = docker_container.mininet_container.ports[0].external
}