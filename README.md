Project Architecture Overview
This project follows a robust CI/CD pipeline to manage the deployment and maintenance of a three-tier application. The architecture is divided into the following components:

Continuous Integration and Continuous Deployment (CI/CD)
Terraform: Infrastructure as Code (IaC) is managed through Terraform, enabling automated provisioning and configuration of the infrastructure.
Jenkins: Acts as the orchestrator for the CI/CD pipeline, triggering various tasks such as code quality analysis, dependency checks, and building Docker images.
CI/CD Workflow:
Code Quality Analysis: Ensures that the codebase adheres to quality standards using automated tools.
Dependency Check: Analyzes and manages project dependencies to ensure stability.
File Scan: Scans the code for potential security vulnerabilities.
Docker Image Creation: Builds Docker images for different application components.
ECR Image Scan: Uses Trivy to scan Docker images for vulnerabilities before pushing them to AWS ECR (Elastic Container Registry).
Updating Deployment File: Updates the Kubernetes deployment files in the GitHub repository with the latest image information.
Pushing to ECR Private Repo: Securely stores Docker images in a private ECR repository.
ArgoCD: Automates the deployment of the updated images to the Kubernetes cluster, ensuring continuous delivery.
Application Infrastructure:
Frontend Tier: The user interface is managed in this tier, deploying the front-end pods.
Backend Tier: Handles the business logic and API services, running as backend pods.
Database Tier: Manages data storage and retrieval using database pods.
Secrets Management: Sensitive data such as ECR and DB secrets are securely managed.
Networking & Security:
Application Load Balancer: Directs traffic to the appropriate application tier, ensuring high availability and reliability.
GoDaddy Domain Provider: Manages domain names for accessing the application.
Monitoring: Kubernetes monitoring is implemented using tools like Prometheus and Grafana to ensure system health and performance.
Security:
ECR Secrets & DB Secrets: Secure management of sensitive credentials is maintained across the tiers.
This architecture ensures a scalable, secure, and automated deployment process for the application, providing high availability and robust monitoring capabilities.
