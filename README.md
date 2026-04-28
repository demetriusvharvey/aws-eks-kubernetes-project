# 🚀 Kubernetes Deployment on AWS EKS (DevOps Project)

## 📌 Overview

This project demonstrates deploying a **containerized FastAPI application** on a Kubernetes cluster using Amazon EKS.

It showcases real-world DevOps practices including container orchestration, load balancing, and autoscaling.

---

## 🧱 Architecture


User
↓
AWS Load Balancer (Service type: LoadBalancer)
↓
Kubernetes Service
↓
Pods (FastAPI Containers)
↓
AWS ECR (Docker Image)


---

## ⚙️ Tech Stack

- **Cloud:** AWS  
- **Kubernetes:** Amazon EKS  
- **Containers:** Docker  
- **Registry:** Amazon ECR  
- **Infrastructure as Code:** Terraform  
- **Orchestration:** Kubernetes Deployments & Services  
- **Autoscaling:** Horizontal Pod Autoscaler (HPA)  
- **Backend:** FastAPI (Python)

---

## 🚀 Features

- ✅ Deployed Kubernetes cluster using Terraform  
- ✅ Containerized app deployed as pods  
- ✅ Load-balanced public endpoint  
- ✅ Horizontal Pod Autoscaler configured  
- ✅ Scalable and production-style architecture  

---

## 🌐 Live Endpoint


http://a5c787c56a8394e78840d246f9ea961e-430402934.us-east-1.elb.amazonaws.com


Example response:

```json
{
  "status": "ok",
  "service": "bedrock-api"
}
📦 Deployment
1. Create infrastructure
terraform init
terraform apply
2. Configure kubectl
aws eks update-kubeconfig --region us-east-1 --name eks-demo-cluster
3. Deploy app
kubectl apply -f k8s-manifests/deployment.yaml
kubectl apply -f k8s-manifests/service.yaml
4. Verify
kubectl get pods
kubectl get svc
📈 Autoscaling
kubectl autoscale deployment bedrock-app --cpu=50% --min=2 --max=5
🧠 Key Concepts Demonstrated
Kubernetes deployments and services
Container orchestration
Load balancing with AWS
Scaling with HPA
Infrastructure as Code with Terraform
🔮 Future Improvements
Add Ingress (NGINX / ALB Ingress Controller)
Add monitoring (Prometheus + Grafana)
Add CI/CD pipeline for Kubernetes deployments
Secure app with authentication
👨‍💻 Author

Demetrius Harvey
Cloud & DevOps Engineer