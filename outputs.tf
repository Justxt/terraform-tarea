output "ip_publica_vm" {
  description = "Direccion IP publica asignada a la maquina virtual."
  value       = module.network.public_ip_address
}

output "resource_group_name" {
  description = "Grupo de recursos creado."
  value       = module.network.resource_group_name
}

output "vm_name" {
  description = "Nombre de la maquina virtual Linux."
  value       = module.linux_vm.vm_name
}
