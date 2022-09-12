module "db" {
  source                                = "terraform-aws-modules/rds/aws"
  version                               = "5.0.3"
  identifier                            = var.db_01_identifier
  engine                                = var.db_01_engine
  engine_version                        = var.db_01_engine_version
  family                                = var.db_01_family
  major_engine_version                  = var.db_01_major_engine_version
  instance_class                        = var.db_01_instance_class
  allocated_storage                     = var.db_01_allocated_storage
  max_allocated_storage                 = var.db_01_max_allocated_storage
  storage_type                          = var.db_01_storage_type
  storage_encrypted                     = var.db_01_storage_encrypted
  username                              = var.db_01_username
  password                              = var.db_01_password
  port                                  = var.db_01_port
  domain                                = var.db_01_domain
  domain_iam_role_name                  = var.db_01_domain_iam_role_name
  multi_az                              = var.db_01_multi_az
  subnet_ids                            = module.vpc.private_subnets
  db_subnet_group_name                  = var.db_01_identifier
  create_db_subnet_group                = var.db_01_create_db_subnet_group
  vpc_security_group_ids                = [module.security_group_db_01.security_group_id]
  maintenance_window                    = var.db_01_maintenance_window
  backup_window                         = var.db_01_backup_window
  enabled_cloudwatch_logs_exports       = var.db_01_enabled_cloudwatch_logs_exports
  create_cloudwatch_log_group           = var.db_01_create_cloudwatch_log_group
  backup_retention_period               = var.db_01_backup_retention_period
  skip_final_snapshot                   = var.db_01_skip_final_snapshot
  deletion_protection                   = var.db_01_deletion_protection
  performance_insights_enabled          = var.db_01_performance_insights_enabled
  performance_insights_retention_period = var.db_01_performance_insights_retention_period
  create_monitoring_role                = var.db_01_create_monitoring_role
  monitoring_interval                   = var.db_01_monitoring_interval
  options                               = var.db_01_options
  create_db_parameter_group             = var.db_01_create_db_parameter_group
  license_model                         = var.db_01_license_model
  timezone                              = var.db_01_timezone
  character_set_name                    = var.db_01_character_set_name
  tags                                  = merge(var.globaltags)

}