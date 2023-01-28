# ProjectInfra

This Repo contains the code to build an Ec2 instance and its security group infrastructure on AWS with infrastructure as code(IaC) approach using Terraform.
The files contained in the repo and their importance is described below.

## main.tf 

It contains the code to create an EC2 instance in the authorized AWS account.
Terraform creates and manages resources on cloud platforms and other services through their APIs. Providers enable Terraform to work with virtually any platform or service with an accessible API.

Terraform is authorized with ```Access_key``` and ```Secret_Key```. These are provided by AWS at the time of an IAM user creation.

## web_sg.tf

This file contains the code to create and attach a security group to the EC2 instance that will be provisioned by Terraform upon applying the ```Terraform apply``` command.

### Terraform commands

```Terraform init```
Intializes  the project and identifies the providers to be used for the target environment.

```Terraform plan```
Terraform drafts a plan to get to the target state.

```Terraform apply```
Terraform makes the necessary changes required on the target environment to bring it to the desired state.

```Terraform Destroy```
This instructs Terraform to delete any infrastructure created with the current configuration file.

```Terraform show```
It shows the details of the resource created.

```Terraform fmt```
The terraform fmt command is used to rewrite Terraform configuration files to a canonical format and style.

```Terraform Validate```
The Terraform validate command validates the configuration files in a directory.


## Terraform.tfstate

It is a JSON file that maps real world infrastructure resources to the resource definition in the main configuration file.  
It has complete record of infrastructure created by **Terraform**.  
Terraform uses this file as the single source of truth when running ```terraform plan``` and ```terraform apply``` commands.  

It is considered to be a blueprint of all the resources that Terraform manages.



