### mininet_module/variables.tf ###

# Variables for the Docker image "mininet"
variable "image_name" {
  description = "Name of the Docker image"
  type        = string
  default     = "iwaseyusuke/mininet"
}

variable "keep_locally" {
  description = "Keep the Docker image locally"
  type        = bool
  default     = true
}

# Variables for the Docker container "mininet"

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "mininet"
}

variable "stdin_open" {
  description = "Open stdin"
  type        = bool
  default     = true
}
  
variable "tty" {
  description = "Keep container running"
  type        = bool
  default     = true
}

variable "destroy_grace_seconds" {
  description = "Time before container is destroyed to allow container to stop"
  type        = number
  default     = 5
}
variable "internal_container_port" {
  description = "Internal port of the Docker container"
  type        = number
  default     = 80
}

variable "external_container_port" {
  description = "External port of the Docker container"
  type        = number
  default     = 8080
}

variable "protocol_container_port" {
  description = "Protocol of the Docker container"
  type        = string
  default     = "tcp"
}