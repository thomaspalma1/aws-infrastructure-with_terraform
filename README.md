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
Description

###  Usage

To use the code in this repository, first clone the project to your machine using `git clone`. Then, navigate to the `infra/` directory, which contains all the infrastructure-related content.

Inside the `infra/` directory, you will find **two main subdirectories**:

 - **`ec2`**: Contains examples of simple code written in **Terraform**, focused on the **AWS EC2 service**. These files are intended for creating and configuring EC2 instances, serving as a foundation for learning and running initial tests with **Terraform** on AWS.
 - **`terraform_core_functionality`**: In this directory, I explore more specific and fundamental concepts of **Terraform**, such as file structure, variables, outputs, providers, resources, and other important aspects of the tool.

To run any of the **Terraform** code in this repository, you must have **Terraform** properly installed on your machine. In addition, since AWS is the cloud provider used, you need to have an active AWS account with permissions to create and manage the resources used in the examples.

> [!WARNING]
> Some resources created by the code in this repository may incur costs in your AWS account. If you run these files, make sure you understand which services are being provisioned and remember to remove the resources after testing to avoid unexpected charges.
