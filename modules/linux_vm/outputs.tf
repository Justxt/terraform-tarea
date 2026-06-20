output "vm_name" {
  description = "Nombre de la VM Linux."
  value       = azurerm_linux_virtual_machine.this.name
}
