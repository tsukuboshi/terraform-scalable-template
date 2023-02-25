# ====================
#
# Outputs
#
# ====================

output "listener_arn" {
  value = aws_lb_listener.tf_alb_lsnr_https.arn
}
