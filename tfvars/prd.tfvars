#Global Vars
environment = "prd"
globaltags = { "source" = "terraform", "product" = "EmpresaX", "managed" = "IAC", "environment" = "prd" }


zones_EmpresaX = "EmpresaX.app.br"

#####VPC
region             = "us-east-1"
name               = "EmpresaX"
cidr               = "10.230.0.0/16"
public_subnets     = ["10.230.0.0/23", "10.230.2.0/23"]
private_subnets    = ["10.230.128.0/23", "10.230.130.0/23"]
enable_ipv6        = false
enable_nat_gateway = true
single_nat_gateway = true
default_vpc_enable_dns_hostnames = true
default_vpc_enable_dns_support = true
enable_dns_hostnames = true

#################################################
#####################EC2#########################
  create_vm_jmp_01                 = true
  name_vm_jmp_01                   = "jmp_01"
  ami_vm_jmp_01                    = "ami-041306c411c38a789"
  instance_type_vm_jmp_01          = "t2.micro"
  monitoring_vm_jmp_01             = true
  associate_public_ip_address      = true
  tags_vm_jmp_01                   = {"class" = "Data Base"}
  root_block_device_vm_jmp_01      = [
  #  {
  #    encrypted   = true
  #    volume_type = "gp3"
  #    throughput  = 200cc
  #    volume_size = 20
  #  },
  ]


##################################################
  db_01_identifier                            = "db01"
  db_01_engine                                = "sqlserver-ex"
  db_01_engine_version                        = "15.00.4153.1.v1"
  db_01_family                                = "sqlserver-ex-15.0" # DB parameter group
  db_01_major_engine_version                  = "15.00"             # DB option group
  db_01_instance_class                        = "db.t3.medium"
  db_01_allocated_storage                     = 20
  db_01_max_allocated_storage                 = 22
  db_01_enabled_cloudwatch_logs_exports       = ["error"]
  db_01_create_cloudwatch_log_group           = true
  db_01_backup_retention_period               = 0
  db_01_skip_final_snapshot                   = true
  db_01_deletion_protection                   = false 
  db_01_performance_insights_enabled          = true
  db_01_performance_insights_retention_period = 7
  db_01_create_monitoring_role                = true
  db_01_monitoring_interval                   = 60
  db_01_options                               = []  
  db_01_create_db_parameter_group             = false
  db_01_license_model                         = "license-included"
  db_01_storage_type                          = "gp2"
  db_01_storage_encrypted                     = false
  #db_01_timezone                              = "America/Buenos_Aires"
  #db_01_character_set_name                    = "SQL_Latin1_General_CP1_CI_AS"
  #db_01_username                              = "complete_mssql"
  #db_01_port                                  = 1433
  #db_01_domain                                = aws_directory_service_directory.skimed.id
  #db_01_domain_iam_role_name                  = aws_iam_role.rds_ad_auth.name
  #db_01_multi_az                              = false
  #db_01_maintenance_window                    = "Mon:00:00-Mon:03:00"
  #db_01_backup_window                         = "03:00-06:00"


  ########################################################
  ####EKS
  cluster_name                      = "cl-EmpresaX-01"
  cluster_version                   = "1.22"


###############################################################
#S3 EmpresaX-storage-logs-01
s3_EmpresaX_storage_01_create_bucket          = true
s3_EmpresaX_storage_01_bucket_name            = "storage-EmpresaX-01"
s3_EmpresaX_storage_01_acl                    = "private"
s3_EmpresaX_storage_01_force_destroy          = true
s3_EmpresaX_storage_01_tags                   = {"files" = "imagens"}

###############################################################
#S3 EmpresaX-storage-logs-01
s3_EmpresaX_datalake_01_create_bucket          = true
s3_EmpresaX_datalake_01_bucket_name            = "datalake-EmpresaX-01"
s3_EmpresaX_datalake_01_acl                    = "private"
s3_EmpresaX_datalake_01_force_destroy          = true
s3_EmpresaX_datalake_01_tags                   = {"files" = "datalake"}