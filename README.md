# :microscope: TF-LAB-04

<p align="center">
  <img src="https://github.com/pathei-kosmos/tf-lab-04/blob/master/lab-04.png" alt="Lab infrastructure diagram" />
</p>

[Terraform](https://www.terraform.io/) automated deployment inspired by the former [AZ-104 Git Lab 04](https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator/Instructions/Labs/LAB_04-Implement_Virtual_Networking.html).

# Requirements

* [Terraform](https://developer.hashicorp.com/terraform/install)
* [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

# Setup

Clone the repo and install the dependencies.

```
git clone https://github.com/pathei-kosmos/tf-lab-104.git
cd tf-lab-104
```

Initialize the Terraform project:

```
terraform init
```

# Usage

Start by connecting Azure CLI to the Azure subscription you want to use for deployment:

```
az login
```

You can view the resources that will be created:

```
terraform plan
```

If everything looks fine, you can start the deployment:

```
terraform apply
```

To delete the deployed resources:

```
terraform destroy
```