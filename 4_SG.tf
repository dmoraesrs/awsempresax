module "security_group_db_01" {
  source                   = "terraform-aws-modules/security-group/aws"
  version                  = "~> 4"
  name                     = "${var.db_01_identifier}"
  description              = "SQL SERVER SG"
  vpc_id                   = module.vpc.vpc_id
  # ingress
  ingress_with_cidr_blocks = [
    {
      from_port   = 1433
      to_port     = 1433
      protocol    = "tcp"
      description = "SQL access from within VPC"
      cidr_blocks = module.vpc.vpc_cidr_block
    },
    {
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      description = "SQL access from within VPC"
      cidr_blocks = module.vpc.vpc_cidr_block
    },
    {
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      description = "Acesso Joao"
      cidr_blocks = "177.126.155.130/32"
    },
    {
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      description = "Acesso Joao CL"
      cidr_blocks = "191.253.197.189/32"
    },
    {
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      description = "Acesso JP"
      cidr_blocks = "177.223.132.162/32"
    },
    {
      from_port   = 3389
      to_port     = 3389
      protocol    = "tcp"
      description = "Acesso DIEGO"
      cidr_blocks = "201.40.168.12/32"
    },
  ]
  egress_with_cidr_blocks = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "ALL"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
  tags = var.globaltags
}