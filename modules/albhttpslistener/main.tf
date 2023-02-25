
# ====================
#
# HTTPS Listener
#
# ====================

resource "aws_lb_listener" "tf_alb_lsnr_https" {
  load_balancer_arn = var.load_balancer_arn
  port              = var.https_port
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-2016-08"
  certificate_arn   = var.acm_alb_cert_arn

  default_action {
    type = "fixed-response"

    fixed_response {
      content_type = "text/plain"
      message_body = "Not Found"
      status_code  = "404"
    }
  }

  tags = {
    Name = "${var.system}-${var.project}-${var.environment}-${var.resourcetype}-lsnr-https"
  }

  depends_on = [
    var.acm_alb_cert_valid_id
  ]
}
