# Gravação do state no S3
terraform {
  backend "s3" {
    bucket         = "repotoolsEmpresaXiac"
    key            = "EmpresaXtfstate"
    region         = "us-east-1"
    role_arn       = "arn:aws:iam::719975108325:role/terraform-cross-account"
  }
}


