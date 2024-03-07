variable "location" {
  default = "East US"
  type    = string
}

variable "prefix" {
  default = "az104-04"
  type    = string
}

variable "vm-size" {
  default = "Standard_B2ats_v2"
  type    = string
}

variable "vm-password" {
  default   = "X$Z1cAmx1F6v"
  type      = string
  sensitive = true
}