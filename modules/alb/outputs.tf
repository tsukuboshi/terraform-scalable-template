# ====================
#
# Outputs
#
# ====================

output "alb_arn" {
  value = aws_lb.tf_alb.arn
}

output "alb_dns_name" {
  value = aws_lb.tf_alb.dns_name
}

output "alb_zone_id" {
  value = aws_lb.tf_alb.zone_id
}
