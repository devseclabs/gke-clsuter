# Terraform - GKE Cluster Deployment

## Version Tested:

| Name | Version |
|------|---------|
| terraform | >= 0.13.0|

## Module Inputs - (optional - terraform.tfvars)

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cluster_name | cluster Name | `string` | `{}` | yes |
| project_id | project id to deploy the cluster | `string` | `{}` | yes |
| gke_num_nodes | default nodes number 1| `number` | `{}` | no |
| image | default image - ubuntu | `string` | `{}` | no |

## Outputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| GKE Cluster Name | Cluster Name | `string` | `{}` | yes |
| GKE Cluster Endpoint | Cluster Endpoint | `string` | `{}` | yes |

## Steps:
- Step 1: Authenticate with your google account:
    gcloud init
    gcloud auth application-default login
 
- Step 2 : Clone this repo: ```git clone https://github.com/devseclabs/gke-cluster.git```
- Step 3: if you are going to use our gke module, move to module-example ```cd module-example``` and edit the gke.tf file with appropriate values:

```
cluster_name = "nvlabs"
project_id = "your-project-id"
```

- Step 4 : Save your changes and download all plugins with Terraform Init - run  ```terraform init```
- Step 5: Deploy the cluster with Terraform Apply (plan/apply) - run ```terraform apply```
- Step 6: then get our gke credentials configuration, running this gcloud command:
    ```gcloud container clusters get-credentials [cluster-name] --zone [zone] --project [project-id]```


### Optional - Using tfvars:

- Create or  the terraform vars file:



### Clean Up
- destroy your deployment: ```terraform destroy```
