# Learning Terraform (IaC)

This repository contains my first steps learning **Terraform** for **Infrastructure as Code (IaC)**.  
Here are the CLI commands I have learned.  

---

## Pre-requisites
- AWS CLI configured with **SSO authentication**  
- Terraform installed on your machine  

---

## Terraform Workflow

### 1. Initialize the project  
```bash
terraform init
```

### 2. Validate configuration  
```bash
terraform validate
```

### 3. Preview changes  
```bash
terraform plan
```

### 4. Apply changes  
```bash
terraform apply
```

To skip manual approval:  
```bash
terraform apply -auto-approve
```

### 5. Destroy infrastructure  
```bash
terraform destroy
```

---

### 6. Workspaces
```bash
terraform workspace new [workspace-name]
```
To list all workspaces
```bash
terraform workspace list
```
To select a workspace
```bash
terraform workspace select [workspace-name]
```

### 7. Datasources

A datasource is an external source that provides information about existing resources.
It is read-only and does not create or modify anything, it just retrieves data
to be used in the Terraform configuration.

### 8. Outputs

An output is a way to expose information from your Terraform configuration.
It can show values from resources that were created, from data sources, or from variables.

## Visual Workflow

```mermaid
flowchart LR
    A[terraform init] --> B[terraform validate]
    B --> C[terraform plan]
    C --> D[terraform apply]
    D -->|when no longer needed| E[terraform destroy]
```

---

## Notes
- Always run `terraform plan` before `apply`.  
- Use `-auto-approve` with caution, since it bypasses the confirmation step.  