# terraform.tfvars
# Fill in your actual values below. Only db_password is required to be secret.

aws_region        = "ap-southeast-2"
environment        = "dev"
project_name       = "minhtri-devops-cloud"
source_bucket_name = "minhtri-devops-cloud-getobjects"
resized_bucket_name = "minhtri-devops-cloud-resized"
lambda_timeout     = 30
lambda_memory      = 512
lambda_runtime     = "java17"
db_password        = "Minhchau3112..."
vpc_id             = "vpc-xxxxxxxx"
public_subnet_cidr = "10.0.1.0/24"
public_subnet_az   = "ap-southeast-2a"
public2_subnet_cidr = "10.0.2.0/24"
public2_subnet_az   = "ap-southeast-2b"
