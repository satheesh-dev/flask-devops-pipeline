Flask DevOps Pipeline with GitHub Actions & Azure Kubernetes Service (AKS)
This project demonstrates a complete CI/CD pipeline using GitHub Actions, Docker, and Azure Kubernetes Service (AKS) to deploy a simple Flask application.

📦 Tech Stack
🐍 Flask (Python 3.10)

🐳 Docker

⚙️ GitHub Actions (CI/CD)

☁️ Azure Kubernetes Service (AKS)

📦 Docker Hub

📁 Project Structure
bash
Copy
Edit
.
├── app.py                  # Simple Flask app
├── Dockerfile              # Dockerfile to containerize the app
├── requirements.txt        # Flask dependency
├── .github/workflows/
│   └── main.yml            # GitHub Actions CI/CD workflow
└── k8s/
    ├── deployment.yaml     # Kubernetes Deployment spec
    └── service.yaml        # Kubernetes Service (LoadBalancer)
🧪 API Endpoints
Endpoint	Description
/ping	Health check API
/hello	Returns a hello message

Example response:

{
  "message": "Hello from Service 2"
}


🔧 CI/CD Pipeline (GitHub Actions)
The pipeline performs:

Checkout code

Build Docker image

Push image to Docker Hub

(Manual Step) Apply Kubernetes manifests to AKS

🐳 Docker Build & Push (Automatically by GitHub Actions)
Image is pushed to:

docker.io/<your-username>/flask-app:latest

☁️ Kubernetes Deployment (AKS)
To deploy manually:

kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

Check service:
kubectl get svc

Once the EXTERNAL-IP is available, access the app at:

http://<EXTERNAL-IP>/ping
http://<EXTERNAL-IP>/hello

📸 Loom Walkthrough
A full walkthrough of this project has been recorded and shared via Loom.

🙋‍♂️ Author
Satheesh
🚀 Junior DevOps Engineer
