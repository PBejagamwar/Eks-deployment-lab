terraform {
required_version = "~> 1.14.0"
required_providers {
aws = {
source  = "hashicorp/aws"
version = "~> 5.99.0"
}
}
backend "s3" {
bucket         = "eks-state-lock-bucket"
region         = "us-east-1"
key            = "eks/terraform.tfstate"
encrypt        = true
use_lockfile   = true
}
}
provider "aws" {
region = var.aws-region
}