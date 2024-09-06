# Complete-CI-CD-with-Terraform
Project Overview: Complete CI/CD with Terraform

        Project Description:
         Integrate provisioning stage into complete CI/CD Pipeline to automate provisioning server instead of deploying to an existing server
          1. Create SSH Key Pair
          2. Install Terraform inside Jenkins container
          3. Add Terraform configuration to application's git repository
          4. Adjust Jenkins file to add "provision" step to the CI/CD pipeline that provisions EC2 instance
          5. So the complete CI/CD project we build has the following configuration: |
             A. CI step: Build artifact for Java Maven application
             B. CI step: Build and push Docker image to Docker Hub
             C. CD step: Automatically provision EC2 instance using TF
             D. CD step: Deploy new application version on the provisioned EC2 instance with Docker Compose
         Technologies used:
         Terraform, Jenkins, Docker, AWS, Git, Java, Maven, Linux, Docker Hub
-----------------------
      
         A. Project Description:
         This project is all about automating the process of building, testing, and deploying a Java Maven application.
         Instead of manually setting up servers and deploying applications, we’ve created a pipeline that does it all for us. 
         Here’s a breakdown of what we did:
------------------------
         B. Create SSH Key Pair: I have generated an SSH key pair to securely connect to our EC2 instance.
            1. Install Terraform inside Jenkins Container: I did set up Terraform within Jenkins to manage our infrastructure 
               as code.
            2. Add Terraform Configuration to Application’s Git Repository: I have included Terraform configuration files in 
               our Git repository to define our infrastructure.
            3. Adjust Jenkinsfile to Add “Provision” Step: I have modified our Jenkinsfile to include a “provision” step that 
               uses Terraform to set up an EC2 instance.
-------------------------               
        C. Complete CI/CD Configuration:
           1. CI Step: Build the Java Maven application.
           2. CI Step: Build and push the Docker image to Docker Hub.
           3. CD Step: Automatically provision an EC2 instance using Terraform.
           4. CD Step: Deploy the new application version on the provisioned EC2 instance using Docker Compose.
-------------------------
        D. What Did You Build?
          I have built a complete CI/CD pipeline that automates the entire process of building, testing, and deploying our Java 
          Maven application. The pipeline includes the following stages:
          1. Build: Compile the Java application and create a build artifact.
          2. Docker Build & Push: Build a Docker image for the application and push it to Docker Hub.
          3. Provision: Automatically provision an EC2 instance using Terraform.
          4. Deploy: Deploy the new application version on the provisioned EC2 instance using Docker Compose.

  E. What Have You Learned?
  Through this project, I learned:
    1. Infrastructure as Code (IaC): How to use Terraform to define and manage infrastructure.
    2. CI/CD Pipelines: How to set up and configure a complete CI/CD pipeline using Jenkins.
    3. Docker: How to build Docker images and push them to Docker Hub.
    4. AWS: How to provision and manage EC2 instances on AWS.
    5. Automation: How to automate the entire process of building, testing, and deploying applications.
    6. Integration: How to integrate various tools and technologies (Terraform, Jenkins, Docker, AWS) to create a seamless CI/CD pipeline.
    7. This project demonstrates our ability to automate infrastructure provisioning and application deployment, making the process more efficient and reliable. Great job! 🚀
