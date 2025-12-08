variable "docker_username" {
  description = "Docker Hub username"
  type        = string
  default     = "emma125nash"
}

variable "docker_image" {
  description = "Docker image name"
  type        = string
  default     = "supermarche-app"
}

variable "docker_image_tag" {
  description = "Docker image tag"
  type        = string
  default     = "latest"
}

variable "container_port" {
  description = "Container port"
  type        = number
  default     = 80
}

variable "host_port" {
  description = "Host port"
  type        = number
  default     = 8080
}

variable "container_name" {
  description = "Container name"
  type        = string
  default     = "supermarche-terraform"
}