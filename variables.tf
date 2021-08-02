variable "ingress_ports" {
  description = "Ingress ports"
  type        = list(string)
}

variable "egress_ports" {
  description = "Engress ports"
  type        = list(string)
  default     = ["0"]
}

variable "security_group_name" {
  description = "Security_group_name"
  type        = string
}
