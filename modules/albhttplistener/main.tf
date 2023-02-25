
# ====================
#
# HTTP Listener
#
# ====================

resource "aws_lb_listener" "tf_alb_lsnr_http" {
  load_balancer_arn = var.load_balancer_arn
  port              = var.http_port
  protocol          = "HTTP"

  default_action {
    type = "redirect"

    redirect {
      port        = var.redirect_port
      protocol    = "HTTPS"
      status_code = "HTTP_301"
    }
  }

  tags = {
    Name = "${var.system}-${var.project}-${var.environment}-${var.resourcetype}-lsnr-http"
  }
}
