variable "project_name" {
  description = "Nombre base usado para nombrar los recursos."
  type        = string
  default     = "techustart-dev"
}

variable "resource_group_name" {
  description = "Nombre del grupo de recursos donde se creara la infraestructura."
  type        = string
  default     = "rg-techustart-dev"
}

variable "azure_region" {
  description = "Region de Azure donde se crean los recursos. Para Azure Students se usa chilecentral."
  type        = string
  default     = "chilecentral"
}

variable "tamano_vm" {
  description = "Tamao de la maquina virtual Linux. Standard_D2s_v3 fue usado por Azure Students."
  type        = string
  default     = "Standard_D2s_v3"
}

variable "admin_username" {
  description = "Usuario administrador de la VM."
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Contrasea administrador de la VM. No sube a Git."
  type        = string
  sensitive   = true
}

variable "address_space" {
  description = "CIDR de la red virtual."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefix" {
  description = "CIDR de la subnet principal."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "http_port" {
  description = "Puerto HTTP permitido hacia la VM."
  type        = number
  default     = 80
}
