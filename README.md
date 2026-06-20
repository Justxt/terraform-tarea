# terraform-tarea

Proyecto de Terraform para crear una maquina virtual Linux en Azure e instalar Apache automaticamente.

## Que crea este proyecto

Terraform crea estos recursos en Azure:

- Grupo de recursos
- Red virtual
- Subred
- IP publica
- Grupo de seguridad de red
- Regla de entrada para HTTP en el puerto 80
- Interfaz de red
- Maquina virtual Linux con Ubuntu
- Apache instalado al iniciar la VM

## Estructura

```text
.
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars.example
└── modules
    ├── network
    └── linux_vm
```

## Variables principales

En `variables.tf` estan las variables del despliegue:

```hcl
azure_region = "chilecentral"
tamano_vm    = "Standard_D2s_v3"
```

Estos valores se usaron porque la cuenta Azure for Students no tenia disponibilidad para `eastus` con `Standard_B1s`.

## Como ejecutar

Primero iniciar sesion en Azure:

```bash
az login
```

Crear el archivo de variables:

```bash
cp terraform.tfvars.example terraform.tfvars
```

Editar `terraform.tfvars` y colocar una contrasena segura:

```hcl
admin_password = "TuPasswordSeguro123!"
```

Ejecutar Terraform:

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
```

Al terminar, Terraform muestra la IP publica:

```text
ip_publica_vm = "x.x.x.x"
```

Entrar desde el navegador:

```text
http://x.x.x.x
```

Si Apache fue instalado correctamente, se vera la pagina por defecto de Apache2 en Ubuntu.

## Como borrar los recursos

Para no consumir creditos:

```bash
terraform destroy
```

Si no se conserva el estado local de Terraform, borrar directamente el grupo de recursos:

```bash
az group delete --name rg-techustart-dev --yes
```
