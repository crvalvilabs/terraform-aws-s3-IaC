# Terraform AWS S3 – Multi-Environment

Proyecto de Terraform para la creación de un bucket S3 en AWS usando una arquitectura modular
y separación por entornos (dev, qa, prod).

---

## Tecnologías
- Terraform
- AWS
- AWS CLI
- Git
- Linux

---

## Estructura del proyecto

```text
.
├── environments/
│   ├── dev/
│   │   ├── backend.tf
│   │   ├── dev.tfvars
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   ├── providers.tf
│   │   ├── variables.tf
│   │   └── versions.tf
│   ├── qa/
│   └── prod/
│
├── modules/
│   ├── aws_deploy/
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── networking/
│
├── .gitignore
└── README.md
```

# Descripción general
- `environments/`

    Contiene la configuración específica por entorno (dev, qa, prod).

- `modules/`

    Módulos reutilizables.

- `aws_deploy` 
    
    define la creación del bucket S3.

- `backend.tf`
    
    Configura el backend de Terraform para el estado.

# Requisitos

Antes de ejecutar el proyecto:

- Terraform instalado

- AWS CLI instalado

- Credenciales de AWS configuradas

```bash
aws configure
```
# Uso
Ejecutar entorno dev

<ol>

<li>Ir al entorno</li>

```bash
cd environments/dev
```

<li>Inicializar Terraform</li>

```bash
terraform init
```

<li>Revisar el plan</li>

```bash
terraform plan -var-file=dev.tfvars --out "path/name.plan"
```

<li>Aplicar cambios</li>

```bash
terraform apply -var-file=dev.tfvars "path/plan"
```
</ol>

# Variables principales

Definidas en `dev.tfvars` (o el archivo correspondiente al entorno):

- `bucket_name`
    
    Nombre del bucket S3 (debe ser único a nivel global).

- `region`
    
    Región de AWS donde se crea el bucket.

# Outputs

- `bucket_name`

    Nombre del bucket S3 creado en AWS.

### Notas importantes

- El estado de Terraform no debe versionarse si es local.

- No subir credenciales de AWS al repositorio.

- Cada entorno es independiente.

- Proyecto con fines educativos y de práctica.

# Estado del proyecto

- Proyecto básico enfocado en:

- Terraform Modules

- Separación por entornos

- Buenas prácticas de IaC
