# terraform-tarea

Tarea de Terraform, creamos una maquina virtual Linux en Azure y se instala Apache automaticamente.

## Que crea este proyecto

Terraform crea estos recursos en Azure:

- Grupo de recursos
- Red virtual
- Subred
- IP publica
- Grupo de seguridad de red
- Regla de entrada para HTTP en el puerto 80
- Interfaz de red
- VM Linux con Ubuntu
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

Estos valores se usaron porque la cuenta Azure Students no tenia disponibilidad para `eastus` con `Standard_B1s`.

## Como ejecutar

Primero inicia sesion en Azure:

```bash
az login
```

Crea el archivo de variables:

```bash
cp terraform.tfvars.example terraform.tfvars
```

Editar `terraform.tfvars` y colocar una contrasena segura:

```hcl
admin_password = "aquituspassjeje!"
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

Si fue instalado correctamente se puede ver la pagina de apache
