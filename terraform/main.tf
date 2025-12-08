# Récupérer l'image Docker depuis Docker Hub
resource "docker_image" "supermarche_app" {
  name = "${var.docker_username}/${var.docker_image}:${var.docker_image_tag}"
  
  pull_triggers = [var.docker_image_tag]
}

# Créer et lancer le conteneur Docker
resource "docker_container" "supermarche_app" {
  name  = var.container_name
  image = docker_image.supermarche_app.image_id
  
  # Mapper les ports
  ports {
    internal = var.container_port
    external = var.host_port
  }
  
  # Garder le conteneur actif
  must_run = true
}

# Output pour voir les infos du conteneur
output "container_id" {
  description = "Container ID"
  value       = docker_container.supermarche_app.id
}

output "container_name" {
  description = "Container name"
  value       = docker_container.supermarche_app.name
}

output "access_url" {
  description = "URL to access the application"
  value       = "http://localhost:${var.host_port}"
}