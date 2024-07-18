## Overview
This repository contains a demo Node.js application showcasing Docker containerization and deployment to AWS ECS using Terraform. The application serves a basic "Hello World" message and illustrates a streamlined workflow for deploying containerized applications on AWS.

## Features
- Docker Containerization: Utilizes Docker to containerize the Node.js application, facilitating consistency and portability across different environments.
- AWS ECS Deployment: Demonstrates deployment to AWS ECS (Elastic Container Service) for scalable and reliable execution in the cloud.
- Terraform Automation: Uses Terraform to automate the setup of AWS resources, including ECR (Elastic Container Registry), ECS clusters, and networking components.
- Integration with AWS Services: Includes integration with AWS services like ECR for image storage and ECS for container orchestration.

Prerequisites
Before getting started, ensure you have the following installed:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Terraform: [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

## Getting Started
Follow these steps to deploy the application on AWS ECS:
1. Clone the Repository:
    > git clone <https://github.com/Frnn4268/docker-aws-ecs-nodejs.git>

    > cd .\docker-aws-ecs-nodejs\app\

2. Build the Docker Image:
    > docker build -t my-application-image .

3. Push Docker Image to ECR:
    > aws ecr get-login-password --region <aws_region> | docker login --username AWS --password-stdin <ecr_repository_url>
  
    > docker tag my-application-image:latest <ecr_repository_url>/my-application-image:latest

    > docker push <ecr_repository_url>/my-application-image:latest

4. Deploy with Terraform:
   > terraform init
   
   > terraform apply

6. Access the Application:
Once deployed, access the application via the load balancer DNS provided by AWS.

## Acknowledgments
- [AWS Documentation](https://docs.aws.amazon.com/)
- [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)

