######################################################
######################################################
variable "zones_EmpresaX" {
    type = string
}

variable "records_EmpresaX" {
  description = "List of maps of DNS records"
  type        = any
  default     = []
}
