################################################################
#### Bucket S3 s3_EmpresaX_storage_01
################################################################
module "s3_EmpresaX_storage_01" {
  source            = "terraform-aws-modules/s3-bucket/aws"
  create_bucket     = var.s3_EmpresaX_storage_01_create_bucket
  bucket            = "${var.environment}-${var.s3_EmpresaX_storage_01_bucket_name}"
  acl               = var.s3_EmpresaX_storage_01_acl
  force_destroy     = var.s3_EmpresaX_storage_01_force_destroy
  tags              = merge(var.globaltags,var.s3_EmpresaX_storage_01_tags)
}


################################################################
#### Bucket S3 s3_EmpresaX_datalake_01
################################################################
module "s3_EmpresaX_datalake_01" {
  source            = "terraform-aws-modules/s3-bucket/aws"
  create_bucket     = var.s3_EmpresaX_datalake_01_create_bucket
  bucket            = "${var.environment}-${var.s3_EmpresaX_datalake_01_bucket_name}"
  acl               = var.s3_EmpresaX_datalake_01_acl
  force_destroy     = var.s3_EmpresaX_datalake_01_force_destroy
  tags              = merge(var.globaltags,var.s3_EmpresaX_datalake_01_tags)
}

