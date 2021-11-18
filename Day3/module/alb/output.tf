output "tg" {
value =aws_lb_target_group.this.arn
}

output "alb_arn" {
  value = aws_lb.this.arn
}

output "alb_details" {
  value = aws_lb.this
}
