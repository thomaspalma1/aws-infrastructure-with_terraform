<div align="center">
   <h1 align="center"><b>AWS infrastructure with Terraform</b></h1>
   <p align="center">
      <link 
         rel="stylesheet" 
         href="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/devicon.min.css"
         />
      <img 
         src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/terraform/terraform-original.svg" 
         width="50" 
         height="50" 
         alt="Terraform"
         />
      <img 
         src="https://cdn.jsdelivr.net/gh/devicons/devicon@latest/icons/amazonwebservices/amazonwebservices-original-wordmark.svg" 
         width="50" 
         height="50" 
         alt="AWS"
         />
   </p>
</div>

### About the project

This repository presents a collection of `AWS` infrastructure examples using **Terraform**, a leading tool for **infrastructure as code**. The goal of the project is to demonstrate essential **infrastructure-as-code** concepts, such as file organization, the use of providers and variables, as well as the provisioning and management of basic `AWS` resources. The content serves as a reference for simple environments and controlled experimentation. It is important to note that the directory structure used in this repository does not represent a production environment. **Production environments** require more **careful modeling and organization**. The focus of this repository is exclusively on **study and learning**.

###  Usage

To use the code in this repository, first clone the project to your machine using `git clone`. Then, navigate to the `infra/` directory, which contains all the infrastructure-related content.

Inside the `infra/` directory, you will find **two main subdirectories**:

 - **`ec2`**: Contains examples of simple code written in **Terraform**, focused on the **AWS EC2 service**. These files are intended for creating and configuring EC2 instances, serving as a foundation for learning and running initial tests with **Terraform** on AWS.
 - **`terraform_core_functionality`**: In this directory, I explore more specific and fundamental concepts of **Terraform**, such as file structure, variables, outputs, providers, resources, and other important aspects of the tool.

To run any of the **Terraform** code in this repository, you must have **Terraform** properly installed on your machine. In addition, since AWS is the cloud provider used, you need to have an active AWS account with permissions to create and manage the resources used in the examples.

> [!WARNING]
> Some resources created by the code in this repository may result in charges to your **AWS account**. If you run these files, make sure you understand which services are being provisioned and remember to remove the resources using `terraform destroy` after testing to avoid unexpected costs.


### Important points to consider

1. For the **Terraform** studies involving `cloud-init`, it was necessary to use **SSH keys**. If you want to run the code in this location, you will need to create the `keys` directory inside the `infra/ec2/cloud_init` path and generate the **SSH keys**, since it is not versioned in the repository. The `keys` directory only needs to be created if you want to test **SSH access** to the provisioned instances. Otherwise, it is not required.

2. The `infra/ec2/ssh` directory is dedicated to studying connections to instances using SSH, exclusively through **SSH keys**. Inside this directory, you need to create a folder called `keys`, following a process similar to the one previously described in the `cloud-init` section. The `keys` directory is used to store the **SSH keys** that provide access to the `AWS` instances. **SSH keys** enable secure authentication without the need to enter a password on each login, making the process more convenient. As a security best practice, **SSH keys**, especially private keys, are not versioned in this repository. Therefore, to run the code or access the instances via **SSH**, each user must generate and configure their own keys locally. If you do not want to use **SSH** access, this step is not mandatory.


