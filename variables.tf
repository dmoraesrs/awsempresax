# GERAL
variable "environment" {
  type = string
}

variable "account" {
  type = string
  default = "597107324098"
}



variable "region" {
  type = string
  default = "us-east-1"
}
variable "fqdn" {
  type = string
  default = "EmpresaX.app.br"
}

variable "globaltags" {
  type        = map(string)
  description = "A map of the tags to use on the resources that are deployed with this module."
  default = { "source" = "terraform", "product" = "EmpresaX", "managed" = "IAC" }
}
