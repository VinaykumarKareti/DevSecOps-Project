terraform {
  
  backend "s3" {
    bucket         = "vinay-terraform-74"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    # dynamodb_table = "Lock-Files"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
