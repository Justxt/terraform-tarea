variable "resource_group_name" {
  description = "Nombre del grupo de recursos."
  type        = string
}

variable "location" {
  description = "Region de Azure."
  type        = string
}

variable "project_name" {
  description = "Nombre base del proyecto."
  type        = string
}

variable "vm_size" {
  description = "Tamano de la VM."
  type        = string
}

variable "admin_username" {
  description = "Usuario administrador."
  type        = string
}

variable "admin_password" {
  description = "Contrasena administrador."
  type        = string
  sensitive   = true
}

variable "network_interface_id" {
  description = "ID de la interfaz de red."
  type        = string
}
