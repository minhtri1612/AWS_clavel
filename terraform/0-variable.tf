variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "ap-southeast-2"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "minhtri-devops-cloud"
}

variable "source_bucket_name" {
  description = "S3 bucket name for original objects"
  type        = string
  default     = "minhtri-devops-cloud-getobjects"
}

variable "resized_bucket_name" {
  description = "S3 bucket name for resized images"
  type        = string
  default     = "minhtri-devops-cloud-resized"
}

variable "lambda_timeout" {
  description = "Lambda function timeout in seconds"
  type        = number
  default     = 30
}

variable "lambda_memory" {
  description = "Lambda function memory in MB"
  type        = number
  default     = 512
}

variable "lambda_runtime" {
  description = "Lambda runtime"
  type        = string
  # IMPORTANT: Make sure this matches your actual Java version (java11 or java17)
  default     = "java17" 
}

variable "db_password" {
  description = "Database master password"
  type        = string
  sensitive   = true
}

variable "vpc_id" {
  description = "VPC ID for RDS and subnets"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet 1"
  type        = string
}

variable "public_subnet_az" {
  description = "Availability zone for public subnet 1"
  type        = string
}

variable "public2_subnet_cidr" {
  description = "CIDR block for public subnet 2"
  type        = string
}

variable "public2_subnet_az" {
  description = "Availability zone for public subnet 2"
  type        = string
}
