terraform {
  required_version = ">= 1.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0.0"
    }
  }
}

# ========================================
# PROVIDER
# ========================================
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "AWS_clavel"
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}