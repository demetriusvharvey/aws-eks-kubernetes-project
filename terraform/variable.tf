variable "aws_region" {
  description = "AWS region for the EKS project"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "eks-demo"
}