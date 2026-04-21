# Terraform GCP Network and VM Lab

This project uses Terraform to provision a small Google Cloud environment with a custom VPC, public and private subnets, two web VMs, one private VM, and basic firewall rules.

## What Gets Created

- A custom VPC with auto-created subnetworks disabled
- One public subnet and one private subnet in the selected region
- Two web VMs in the public subnet, each running Nginx
- One private VM in the private subnet
- An HTTP firewall rule for the web instances
- An SSH firewall rule for instances tagged with `ssh`

## Files

- [main.tf](main.tf) - Network, subnet, VM, and firewall resources
- [providers.tf](providers.tf) - Google provider configuration
- [variables.tf](variables.tf) - Input variables
- [terraform.tfvars](terraform.tfvars) - Example values for the variables
- [outputs.tf](outputs.tf) - Terraform outputs
- [versions.tf](versions.tf) - Terraform and provider version constraints

## Setup

1. Authenticate Terraform with Google Cloud:

```bash
gcloud auth application-default login
```

2. Update [terraform.tfvars](terraform.tfvars) if needed:

- `project_id`
- `region`
- `zone`
- `network_name`

## Deploy

Run the following commands from the project root:

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

Review the plan before applying changes.

## Outputs

After a successful apply, Terraform returns:

- `web_vm_ips` - Internal IPs for the two web VMs
- `private_vm_ip` - Internal IP for the private VM
- `web_vm_public_ips` - External IPs for the web VMs

## Notes

- The web VMs are placed in the public subnet and receive external IP addresses.
- The private subnet has Private Google Access enabled.
- The SSH firewall rule targets instances with the `ssh` network tag, but the current VM definitions only use the `web` tag.

## Destroy

To remove all resources created by this configuration:

```bash
terraform destroy
```
