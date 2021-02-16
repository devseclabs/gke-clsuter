# Terraform - GKE Cluster Deployment

## Versions

| Name | Version |
|------|---------|
| terraform | >= 0.13.0|

## Inputs - terraform.tfvars

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| gke_username | cluster user | `string` | `{}` | yes |
| gke_password | cluster password - min 16 characters | `string` | `{}` | yes |
| project_id | project id to deploy the cluster | `string` | `{}` | yes |
| gke_num_nodes | default nodes number 1| `number` | `{}` | no |
| image | default image - ubuntu | `string` | `{}` | no |

## Outputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| GKE Cluster Name | Cluster Name | `string` | `{}` | yes |
| GKE Cluster Endpoint | Cluster Endpoint | `string` | `{}` | yes |
| GKE Cluster Cert | Cluster Certificate | `string` | `{}` | yes 

### How to deploy

- Create the terraform vars file:

## file - terraform.tfvars
```
gke_username = "nvlabs"
gke_password = "my-strong-pass"
project_id = "your-project-id"
```
## Deploy and Manage your deployment using terraform:
    - init your plugins                 ```terraform init```
    - plan your deployment              ```terraform plan```
    - apply the changes in your cluster ```terraform apply```

### Clean Up
- destroy your deployment: ```terraform destroy```
