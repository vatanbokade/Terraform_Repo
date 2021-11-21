
provider "aws" {
    region = "us-east-2"
}

resource "aws_security_group" "this" {
  name        = "${var.name}-asg"
  description = "created by terraform"
  vpc_id      = var.vpc_id

    dynamic "ingress" {
    for_each = var.ingress
    content {
      from_port = ingress.value["port"]
      to_port = ingress.value["port"]
      protocol = "tcp"
      cidr_blocks = lookup(ingress.value,"whitelist",["0.0.0.0/0"]) 
    }
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    name = "${var.name}-asg"
  }
}

# resource "aws_security_group_rule" "ssh" {
#   type              = "ingress"
#   from_port         = 80
#   to_port           = 80
#   protocol          = "tcp"
#   cidr_blocks       = [aws_vpc.example.cidr_block]
#   ipv6_cidr_blocks  = [aws_vpc.example.ipv6_cidr_block]
#   security_group_id = 
# }