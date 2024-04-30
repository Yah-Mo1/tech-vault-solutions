```bash

## Terraform Module Exercise

### Context
You're a DevOps engineer tasked with managing cloud resources at your organisation. The team has decided to use Terraform for infrastructure as code, and you've been assigned to lead the initiative.

### Objective
Write a Terraform configuration that accomplishes the following:

1. Utilizes Terraform modules to create an AWS VPC.
2. Inside this VPC, deploy an EC2 instance and an RDS instance.
3. Use outputs to display essential information about the deployed resources, such as IPs and DNS names.
4. Implement remote state management using AWS S3 and state locking with DynamoDB.
5. Make sure to use variables to make your modules reusable.
6. Use locals to define any constant values or computations that are reused within the configuration.

### Constraints
- Your Terraform configuration should adhere to best practices like proper formatting, commenting, and resource naming conventions.
- Ensure your code is idempotent, meaning running it multiple times won't cause changes unless the actual configuration has changed.

### Bonus
- Implement a basic level of security by using AWS security groups to restrict traffic.
- Use Terraform workspaces to manage different environments (e.g., staging, production).

### Deliverables
- The Terraform configuration files.
- A README explaining:
  - How to use the modules.
  - Any prerequisites or dependencies.
  - How to initialize and apply the configuration.
  - Any assumptions or design choices made.

```
