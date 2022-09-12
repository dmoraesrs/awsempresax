#################################################################
#s3_EmpresaX_prd_storage_logs_01
variable "s3_EmpresaX_storage_01_create_bucket" {
  description = "Allow the object to be deleted by removing any legal hold on any object version. Default is false. This value should be set to true only if the bucket has S3 object lock enabled."
  type        = bool
  default     = false
}

variable "s3_EmpresaX_storage_01_bucket_name" {
  description = "Specifies server-side encryption of the object in S3. Valid values are \"AES256\" and \"aws:kms\"."
  type        = string
  default     = null
}

variable "s3_EmpresaX_storage_01_acl" {
  description = "Specifies server-side encryption of the object in S3. Valid values are \"AES256\" and \"aws:kms\"."
  type        = string
  default     = "private"
}

variable "s3_EmpresaX_storage_01_force_destroy" {
  type = bool
  default = true
}

variable "s3_EmpresaX_storage_01_sse_algorithm" {
  description = "Amazon Resource Name (ARN) of the KMS Key to use for object encryption. If the S3 Bucket has server-side encryption enabled, that value will automatically be used. If referencing the aws_kms_key resource, use the arn attribute. If referencing the aws_kms_alias data source or resource, use the target_key_arn attribute. Terraform will only perform drift detection if a configuration value is provided."
  type        = string
  default     = "aws:kms"
}


variable "s3_EmpresaX_storage_01_kms_master_key_id" {
  description = "A map of tags to assign to the object."
  type        = string
  default     = "arn:aws:kms:us-east-1:518228722375:key/636d2906-5bd8-4580-8684-1296067078db"
}

variable "s3_EmpresaX_storage_01_tags" {
  description = "A map of tags to assign to the object."
  type        = map(string)
  default     = {}
}

#################################################################
#s3_EmpresaX_prd_storage_logs_01
variable "s3_EmpresaX_datalake_01_create_bucket" {
  description = "Allow the object to be deleted by removing any legal hold on any object version. Default is false. This value should be set to true only if the bucket has S3 object lock enabled."
  type        = bool
  default     = false
}

variable "s3_EmpresaX_datalake_01_bucket_name" {
  description = "Specifies server-side encryption of the object in S3. Valid values are \"AES256\" and \"aws:kms\"."
  type        = string
  default     = null
}

variable "s3_EmpresaX_datalake_01_acl" {
  description = "Specifies server-side encryption of the object in S3. Valid values are \"AES256\" and \"aws:kms\"."
  type        = string
  default     = "private"
}

variable "s3_EmpresaX_datalake_01_force_destroy" {
  type = bool
  default = true
}

variable "s3_EmpresaX_datalake_01_sse_algorithm" {
  description = "Amazon Resource Name (ARN) of the KMS Key to use for object encryption. If the S3 Bucket has server-side encryption enabled, that value will automatically be used. If referencing the aws_kms_key resource, use the arn attribute. If referencing the aws_kms_alias data source or resource, use the target_key_arn attribute. Terraform will only perform drift detection if a configuration value is provided."
  type        = string
  default     = "aws:kms"
}


variable "s3_EmpresaX_datalake_01_kms_master_key_id" {
  description = "A map of tags to assign to the object."
  type        = string
  default     = "arn:aws:kms:us-east-1:518228722375:key/636d2906-5bd8-4580-8684-1296067078db"
}

variable "s3_EmpresaX_datalake_01_tags" {
  description = "A map of tags to assign to the object."
  type        = map(string)
  default     = {}
}