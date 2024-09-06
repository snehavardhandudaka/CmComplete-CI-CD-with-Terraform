# Complete-CI-CD-with-Terraform
Project Overview: Complete CI/CD with Terraform

      A. Technologies Used:
         1. Terraform
         2. Jenkins
         3. Docker
         4. AWS
         5. Git
         6. Java
         7. Maven
         8. Linux
         9. Docker Hub

B. Project Description:
    This project is all about automating the process of building, testing, and deploying a Java Maven application. Instead of manually setting up servers and deploying applications, we’ve created a pipeline that does it all for us. Here’s a breakdown of what we did:

C. Create SSH Key Pair: I have generated an SSH key pair to securely connect to our EC2 instance.
     1. Install Terraform inside Jenkins Container: I did set up Terraform within Jenkins to manage our infrastructure as code.
     2. Add Terraform Configuration to Application’s Git Repository: I have included Terraform configuration files in our Git repository to define our infrastructure.
     3. Adjust Jenkinsfile to Add “Provision” Step: I have modified our Jenkinsfile to include a “provision” step that uses Terraform to set up an EC2 instance.
D. Complete CI/CD Configuration:
     1. CI Step: Build the Java Maven application.
     2. CI Step: Build and push the Docker image to Docker Hub.
     3. CD Step: Automatically provision an EC2 instance using Terraform.
     4. CD Step: Deploy the new application version on the provisioned EC2 instance using Docker Compose.
E. What Did You Build?
  I have built a complete CI/CD pipeline that automates the entire process of building, testing, and deploying our Java Maven application. The pipeline includes the following stages:
     1. Build: Compile the Java application and create a build artifact.
     2. Docker Build & Push: Build a Docker image for the application and push it to Docker Hub.
     3. Provision: Automatically provision an EC2 instance using Terraform.
     4. Deploy: Deploy the new application version on the provisioned EC2 instance using Docker Compose.
F. What Have You Learned?
Through this project, I learned:
    1. Infrastructure as Code (IaC): How to use Terraform to define and manage infrastructure.
    2. CI/CD Pipelines: How to set up and configure a complete CI/CD pipeline using Jenkins.
    3. Docker: How to build Docker images and push them to Docker Hub.
    4. AWS: How to provision and manage EC2 instances on AWS.
    5. Automation: How to automate the entire process of building, testing, and deploying applications.
    6. Integration: How to integrate various tools and technologies (Terraform, Jenkins, Docker, AWS) to create a seamless CI/CD pipeline.
    7. This project demonstrates our ability to automate infrastructure provisioning and application deployment, making the process more efficient and reliable. Great job! 🚀
