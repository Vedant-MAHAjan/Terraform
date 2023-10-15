# Website deployment using Terraform and AWS 

### Make use of variables, provisioners, and instance configuration to push, execute, and deploy a simple site on an AWS EC2 instance using Terraform 

# Steps to follow 📈

### 1. Create a new user using IAM and give "AdministratorAccess" permission 

![image](https://github.com/Vedant-MAHAjan/Terraform/assets/88843623/58c3d1aa-3c22-42a4-9a4a-88e5756a445b)

### 2. Create a new Access Key for this user

![image](https://github.com/Vedant-MAHAjan/Terraform/assets/88843623/a08f3d7f-4e2b-49b8-9960-541ce64db927)

### 3. Configure this key on the CLI using "aws configure"

![image](https://github.com/Vedant-MAHAjan/Terraform/assets/88843623/164046c9-ab7b-4c6c-af1c-209d86599cb7)

### 4. Create a public and private key pair using `ssh-keygen` to push it to the AWS account

## Now the working directory contains...

1. `instance.tf` file for the instance configuration
2. `vars.tf` file for all the variables
3. `providers.tf` file for AWS cloud provider
4. The public-private key pair to be pushed to the AWS account
5. The `web.sh` file to remotely execute the script on the instance

![image](https://github.com/Vedant-MAHAjan/Terraform/assets/88843623/0e1d1df2-1eb6-4a84-a974-62405ff480c0)

### All the tf files are present in the directory. Relevant comments are added to explain each file

## Terraform commands

### `terraform init` 

The `terraform init` command is used to initialize a Terraform workspace. This means that Terraform will download and install all of the providers and modules needed to manage your infrastructure.

The `terraform init` command is the first command that you should run when you start working with Terraform on a new project. It is also a good idea to run it whenever you change your Terraform configuration.

### `terraform validate`

The `terraform validate` command is used to validate your Terraform configuration. This means that Terraform will check your configuration for syntax errors, missing or invalid values, and other potential problems.

The `terraform validate` command is a good idea to run before you apply any changes to your infrastructure. This can help to prevent errors and unexpected behavior.

![image](https://github.com/Vedant-MAHAjan/Terraform/assets/88843623/687633f4-d3b1-4f3f-b014-2c0b0316274e)

### `terraform plan`

The `terraform plan` command is used to preview the changes that Terraform would make to your infrastructure if you applied your configuration. This means that Terraform will read your configuration and determine the desired state of your infrastructure. It will then compare the desired state to the current state of your infrastructure and identify any changes that need to be made.

The `terraform plan` command is a good idea to run before you apply any changes to your infrastructure. This can help to ensure that you understand the changes that will be made and that you are comfortable with them.

![image](https://github.com/Vedant-MAHAjan/Terraform/assets/88843623/dc94d104-79d9-4a45-9874-2a1f229c504f)

### terraform apply

The `terraform apply` command is used to apply the changes that Terraform has planned. This means that Terraform will create, update, or delete resources as needed to match the desired state of your infrastructure that is specified in your configuration.

The `terraform apply` command is a powerful command, but it is important to use it carefully. Because it makes real changes to your infrastructure, it is important to understand the changes that Terraform will make before you run the command.

![image](https://github.com/Vedant-MAHAjan/Terraform/assets/88843623/d3e55fa9-e327-476b-bd22-cb3bdfe36190)

### Instance created on AWS console with the same name as in the instance.tf file

![image](https://github.com/Vedant-MAHAjan/Terraform/assets/88843623/a614bdc5-9825-4aca-b779-7d9ff1ca7691)

### Two keys are created, 
1. one to configure AWS from CLI 
2. one to locally created and pushed to access the EC2 instance

![image](https://github.com/Vedant-MAHAjan/Terraform/assets/88843623/46005a2e-390a-4def-a84e-9195e8eeab56)

### Allow port 80 for HTTP in the inbound rules of the security group that houses the EC2 instance

![image](https://github.com/Vedant-MAHAjan/Terraform/assets/88843623/77fb1d16-04e6-44f6-8297-d265a92ea4f5)

### Website hosted and visible on the public IP address of the instance

![image](https://github.com/Vedant-MAHAjan/Terraform/assets/88843623/583fb52a-a2c6-4a1d-8e36-67017a221f86)











