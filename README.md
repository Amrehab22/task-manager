
# **3-Tier Microservices Application with DevOps Pipeline**

## **Project Overview**
This project focuses on building and deploying a robust 3-tier microservices application using a complete DevOps pipeline. The application consists of separate backend and frontend components, and the pipeline incorporates automated testing, deployment, and infrastructure management. The goal is to demonstrate modern software development practices including containerization, automated testing, and continuous integration and deployment.

## **Key Features**
- **Microservices Architecture**: Separate backend and frontend components for easy maintenance and scalability.
- **DevOps Pipeline**: Fully automated build, test, and deployment pipelines to ensure continuous integration and continuous delivery.
- **Containerization**: Docker containers for easy environment setup and scalability.
- **CI/CD**: Automated deployment and testing to facilitate faster development cycles.

## **Technologies & Tools**
### **Infrastructure & Automation**
- **Linux Ubuntu 24.04 LTS**
- **Git & GitLab**: Version control and CI/CD management.
- **Ansible 2.15**: Automating infrastructure provisioning.
- **Docker 24.0 & Docker Compose**: Containerization and orchestration.

### **Development**
- **Python 3.10 with Flask**: Backend API using Flask for RESTful services.
- **React 18**: Frontend UI development with React.
- **PostgreSQL 15**: Database for persistent storage.
- **Swagger**: API documentation and testing.

### **Testing & Quality**
- **Jest & React Testing Library**: Unit and integration testing for the frontend.
- **Pytest**: Unit testing for the backend.
- **SonarQube**: Code quality and vulnerability scanning.

## **Architecture**
The application follows a 3-tier architecture:
1. **Frontend**: React 18-based application for the user interface.
2. **Backend**: Flask REST API built with Python 3.10.
3. **Database**: PostgreSQL 15 for storing and managing data.

## **Infrastructure Setup**
The infrastructure consists of two Ubuntu VMs:
- **Development/Staging Server**: Used for testing and staging environments.
- **Production Server**: Deployed with the final version of the application.

### **Ansible Automation**
Ansible is used to automate the setup and configuration of the following:
- Base server configuration
- Docker installation
- PostgreSQL setup
- Application deployment

### **Docker Configuration**
- **Multi-stage Dockerfile**: Optimized build process with separate stages for Flask, React, and PostgreSQL.
- **Container Separation**: Dedicated containers for Flask, React, and PostgreSQL for modularity and scaling.
- **Docker Compose**: Orchestration for managing local development environments.

## **CI/CD Pipeline Stages**
1. **Build**:
   - Lint Python and JavaScript code
   - Run unit tests
   - Build Docker images

2. **Security Scanning**:
   - Integrate Trivy for vulnerability detection and reporting

3. **Test**:
   - Execute comprehensive unit tests to ensure code quality

4. **Deploy**:
   - Deploy to staging
   - Run smoke tests
   - Promote successful builds to production

5. **Notify**:
   - Slack integration for pipeline status notifications

## **Deliverables**
1. **Documentation**: A comprehensive Git repository with detailed project and setup documentation.
2. **Pipeline Configuration**: GitLab CI/CD pipeline configuration with Slack notifications.
3. **Infrastructure Code**: Ansible playbooks, Dockerfiles, and Docker Compose configurations.
4. **Architecture**: Detailed architecture diagrams and documentation outlining the system components.

## **Setup Instructions**
1. Clone the repository:
   ```bash
   git clone <repository_url>
   cd <project_directory>
   ```

2. Set up the infrastructure:
   - Ensure you have Ansible installed
   - Run the Ansible playbook for server configuration:
     ```bash
     ansible-playbook setup.yml
     ```

3. Build the Docker containers:
   ```bash
   docker-compose build
   ```

4. Run the application locally:
   ```bash
   docker-compose up
   ```

5. Access the application at:
   - Frontend: `http://localhost:3000`
   - Backend: `http://localhost:5000`

## **Contributing**
We welcome contributions to this project! Please follow these steps:
1. Fork the repository
2. Create a new branch (`git checkout -b feature-name`)
3. Commit your changes (`git commit -am 'Add feature'`)
4. Push to the branch (`git push origin feature-name`)
5. Create a new Pull Request

## **License**
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
