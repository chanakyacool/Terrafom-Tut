# Terraform Infrastructure

This repository contains Terraform configurations for managing infrastructure resources across different environments using Infrastructure as Code (IaC) principles.

## Directory Structure

The directory structure of this repository is organized as follows:

```
terraform-infrastructure/
├── infra-live-v1/
│ ├── dev/
│ │ └── vpc/
│ │ ├── 0-provider.tf
│ │ ├── 1-igw.tf
│ │ ├── 1-vpc.tf
│ │ ├── 3-subnets.tf
│ │ ├── 4-nat.tf
│ │ ├── 5-routes.tf
│ │ ├── 9-outputs.tf
│ │ └── terraform.plan
│ └── staging/
│ └── vpc/
│ ├── 0-provider.tf
│ ├── 1-igw.tf
│ ├── 1-vpc.tf
│ ├── 3-subnets.tf
│ ├── 4-nat.tf
│ ├── 5-routes.tf
│ ├── 9-outputs.tf
│ └── terraform.plan
├── infra-live-v2/
│ ├── dev/
│ │ └── vpc/
│ │ ├── main.tf
│ │ ├── outputs.tf
│ │ └── terraform.plan
│ └── staging/
│ └── vpc/
└── infra-modules/
└── dev/
└── vpc/
├── 0-provider.tf
├── 1-vpc.tf
├── 2-igw.tf
├── 3-subnets.tf
├── 4-nat.tf
├── 5-routes.tf
├── 6-variables.tf
└── 7-output.tf


```

### Directories:

- **infra-live-v1/**: Contains Terraform configurations for the first version of infrastructure across different environments (`dev` and `staging`).
- **infra-live-v2/**: Contains Terraform configurations for the second version of infrastructure across different environments (`dev` and `staging`).
- **infra-modules/**: Contains reusable Terraform modules for managing infrastructure components. These modules are used across different environments (`dev`, `staging`, etc.).

### Files:

- **terraform.plan**: Terraform plan file generated after executing `terraform plan`. It provides an execution plan for applying changes to infrastructure.

## Usage

1. Navigate to the desired environment directory (`infra-live-v1`, `infra-live-v2`, etc.).
2. Initialize Terraform:

    ```bash
    terraform init
    ```

3. Review the Terraform configuration files and make any necessary changes.
4. Generate and review the execution plan:

    ```bash
    terraform plan -out=terraform.plan
    ```

5. Apply the changes to provision or update infrastructure:

    ```bash
    terraform apply "terraform.plan"
    ```

## Contributing

Contributions to improve and expand the Terraform configurations are welcome! Please follow the [contribution guidelines](CONTRIBUTING.md) before submitting pull requests.

## License

This repository is licensed under the [MIT License](LICENSE).
