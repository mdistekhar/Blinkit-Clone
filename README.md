# Blinkit-Clone
📦 Blinkit Clone UI – Dockerized Static Web App

A Blinkit-style frontend UI built using HTML, CSS, containerized with Docker, and deployable using Docker Compose.
This project is CI/CD ready and suitable for Jenkins automation.

🚀 Features

Responsive Blinkit-style UI

Pure HTML & CSS

Served using Nginx

Dockerized deployment

Docker Compose orchestration

Health check enabled

Jenkins CI/CD ready

GitHub friendly structure

📁 Project Structure
blinkit-clone/
│
├── index.html
├── styles.css
├── Dockerfile
├── docker-compose.yml
├── nginx.conf
├── .dockerignore
├── images/
└── README.md

🛠️ Tech Stack
Technology	Purpose
HTML	UI structure
CSS	UI styling
Nginx	Web server
Docker	Containerization
Docker Compose	Multi-container orchestration
Jenkins	CI/CD automation
🔧 Prerequisites

Make sure you have installed:

Docker

Docker Compose

Git

Jenkins (optional for CI/CD)

▶️ Run Locally Using Docker Compose
docker-compose build
docker-compose up -d


Open in browser:

http://localhost:8080

▶️ Run Using Docker Only
docker build -t blinkit-clone .
docker run -d -p 8080:80 blinkit-clone

❤️ Health Check

Docker automatically checks:

http://localhost

Container status can be verified using:



docker ps

🔁 CI/CD Jenkins Pipeline Example
pipeline {
  agent any

  stages {
    stage('Clone Repo') {
      steps {
        git 'https://github.com/yourusername/blinkit-clone.git'
      }
    }

    stage('Build Image') {
      steps {
        sh 'docker build -t blinkit-clone:1.0 .'
      }
    }

    stage('Run Container') {
      steps {
        sh 'docker run -d -p 8080:80 blinkit-clone:1.0 || true'
      }
    }
  }
}

☁️ Deployment Ready For

AWS EC2

Azure VM

Google Cloud VM

Kubernetes

Jenkins CI/CD

GitHub Actions

📌 Future Improvements

JavaScript cart system

Backend API integration

Admin dashboard

User authentication

Product database

Payment gateway

👨‍💻 Author

Your Name
DevOps | Cloud | Full Stack Engineer


GitHub: https://github.com/yourusername


LinkedIn: https://linkedin.com/in/yourprofile

📜 License

This project is licensed under the MIT License.

⭐ Support

If you like this project, please give it a ⭐ on GitHub.
