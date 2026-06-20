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

variable "address_space" {
  description = "CIDR de la red virtual."
  type        = list(string)
}

variable "subnet_prefix" {
  description = "CIDR de la subnet."
  type        = list(string)
}

variable "http_port" {
  description = "Puerto HTTP permitido."
  type        = number
}
