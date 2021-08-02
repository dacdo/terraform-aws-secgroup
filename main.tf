resource "aws_security_group" "sec-group" {
  name        = var.security_group_name
  description = "common security group"
  dynamic "ingress" {
    for_each = var.ingress_ports
    content {
      description = "allow port ${ingress.value}"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  dynamic "egress" {
    for_each = var.egress_ports
    content {
      description = "allow port ${egress.value}"
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
