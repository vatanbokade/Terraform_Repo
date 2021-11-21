
provider "aws" {
    region = "us-east-2"
}
resource "aws_security_group" "this" {
  name        = "${var.name}-asg1"
  description = "created by terraform"
  vpc_id      = var.vpc_id
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    name = "${var.name}-count"
  }
}

resource "aws_security_group_rule" "ingress" {
  count             = length(var.port)
  type              = "ingress"
  from_port         = var.port[count.index]
  to_port           = var.port[count.index]
  protocol          = "tcp"
  cidr_blocks       = var.whitelist
  security_group_id = aws_security_group.this.id
  }


