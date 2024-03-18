# :microscope: TF-Lab-04

<p align="center">
  <img src="https://github.com/pathei-kosmos/tf-lab-04/blob/master/lab-04.png" alt="Lab infrastructure diagram" />
</p>

[Terraform](https://www.terraform.io/) automated deployment on [Microsoft Azure](https://azure.microsoft.com/en-us) inspired by the former [AZ-104 Git Lab 04](https://microsoftlearning.github.io/AZ-104-MicrosoftAzureAdministrator/Instructions/Labs/LAB_04-Implement_Virtual_Networking.html).

# Requirements

* [Terraform](https://developer.hashicorp.com/terraform/install)
* [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)

# Setup

Clone the repo:

```
git clone https://github.com/pathei-kosmos/tf-lab-04.git
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

You can view the resources to be deployed:

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

---

:information_source: **Note:** *Since [the VMs password variable is protected](https://developer.hashicorp.com/terraform/tutorials/configuration-language/sensitive-variables), Terraform will prompt you for its value during each operation. Create a ```.tfvars``` file [to set its default value](https://developer.hashicorp.com/terraform/tutorials/configuration-language/sensitive-variables#set-values-with-a-tfvars-file).*