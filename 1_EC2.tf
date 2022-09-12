
################################################################
#### ec2jmp_01
################################################################
module "ec2_jumpserver" {

  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "3.3.0"
  create                 = var.create_vm_jmp_01
  name                   = "${var.environment}-${var.name_vm_jmp_01}.${var.fqdn}"
  ami                    = var.ami_vm_jmp_01
  instance_type          = var.instance_type_vm_jmp_01
  key_name               = "${var.environment}-EmpresaX-key"
  monitoring             = var.monitoring_vm_jmp_01
  vpc_security_group_ids = [module.security_group_db_01.security_group_id]
  subnet_id              = element(module.vpc.public_subnets, 0)
  tags                   = merge(var.globaltags,var.tags_vm_jmp_01)
  root_block_device      = var.root_block_device_vm_jmp_01

}

resource "aws_eip" "lb" {
  instance = module.ec2_jumpserver.id
  vpc      = true
  tags      = merge(var.globaltags,var.tags_vm_jmp_01)
}