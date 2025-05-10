terraform {
  backend "s3" {
    bucket         = "state-bucket-terraform-123"
    key            = "lambda-deployment/terraform.tfstate"
    region         = "us-east-1"
  }
}