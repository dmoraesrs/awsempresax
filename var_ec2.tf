  variable "create_vm_jmp_01" {
  description = "Whether to create an instance"
  type        = bool
  default     = true
}

  variable "name_vm_jmp_01" {
    type = string
  }

  variable "ami_vm_jmp_01" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = ""
}

  variable "instance_type_vm_jmp_01" {
  description = "The type of instance to start"
  type        = string
  default     = "t2.large"
}

  variable "key_name_vm_jmp_01" {
  description = "Key name of the Key Pair to use for the instance; which can be managed using the `aws_key_pair` resource"
  type        = string
  default     = null
}

  variable "monitoring_vm_jmp_01" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled"
  type        = bool
  default     = false
}

  variable "vpc_security_group_ids_vm_jmp_01" {
  description = "A list of security group IDs to associate with"
  type        = list(string)
  default     = null
}
  variable "subnet_id_vm_jmp_01" {
  description = "The VPC Subnet ID to launch in"
  type        = string
  default     = null
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with an instance in a VPC"
  type        = bool
  default     = true
}


  variable "tags_vm_jmp_01" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "root_block_device_vm_jmp_01" {
  description = "Customize details about the root block device of the instance. See Block Devices below for details"
  type        = list(any)
  default     = []
}