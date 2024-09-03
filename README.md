# Complete-CI-CD-with-Terraform

Project Overview: Complete CI/CD with Terraform
Technologies Used:

Terraform
Jenkins
Docker
AWS
Git
Java
Maven
Linux
Docker Hub
Project Description: This project is all about automating the process of building, testing, and deploying a Java Maven application. Instead of manually setting up servers and deploying applications, we’ve created a pipeline that does it all for us. Here’s a breakdown of what we did:

Create SSH Key Pair: We generated an SSH key pair to securely connect to our EC2 instance.
Install Terraform inside Jenkins Container: We set up Terraform within Jenkins to manage our infrastructure as code.
Add Terraform Configuration to Application’s Git Repository: We included Terraform configuration files in our Git repository to define our infrastructure.
Adjust Jenkinsfile to Add “Provision” Step: We modified our Jenkinsfile to include a “provision” step that uses Terraform to set up an EC2 instance.
Complete CI/CD Configuration:
CI Step: Build the Java Maven application.
CI Step: Build and push the Docker image to Docker Hub.
CD Step: Automatically provision an EC2 instance using Terraform.
CD Step: Deploy the new application version on the provisioned EC2 instance using Docker Compose.
What Did You Build?
We built a complete CI/CD pipeline that automates the entire process of building, testing, and deploying our Java Maven application. The pipeline includes the following stages:

Build: Compile the Java application and create a build artifact.
Docker Build & Push: Build a Docker image for the application and push it to Docker Hub.
Provision: Automatically provision an EC2 instance using Terraform.
Deploy: Deploy the new application version on the provisioned EC2 instance using Docker Compose.
What Have You Learned?
Through this project, we’ve learned:

Infrastructure as Code (IaC): How to use Terraform to define and manage infrastructure.
CI/CD Pipelines: How to set up and configure a complete CI/CD pipeline using Jenkins.
Docker: How to build Docker images and push them to Docker Hub.
AWS: How to provision and manage EC2 instances on AWS.
Automation: How to automate the entire process of building, testing, and deploying applications.
Integration: How to integrate various tools and technologies (Terraform, Jenkins, Docker, AWS) to create a seamless CI/CD pipeline.
This project demonstrates our ability to automate infrastructure provisioning and application deployment, making the process more efficient and reliable. Great job! 🚀
