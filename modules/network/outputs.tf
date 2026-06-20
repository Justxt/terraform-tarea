output "resource_group_name" {
  description = "Nombre del grupo de recursos."
  value       = azurerm_resource_group.this.name
}

output "location" {
  description = "Region de los recursos."
  value       = azurerm_resource_group.this.location
}

output "network_interface_id" {
  description = "ID de la interfaz de red de la VM."
  value       = azurerm_network_interface.this.id
}

output "public_ip_address" {
  description = "IP publica asignada."
  value       = azurerm_public_ip.this.ip_address
}
