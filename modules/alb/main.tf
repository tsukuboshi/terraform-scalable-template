# ====================
#
# Load Balancer
#
# ====================
resource "aws_lb" "tf_alb" {
  name               = "${var.system}-${var.project}-${var.environment}-alb"
  internal           = false
  load_balancer_type = "application"

  subnets = [
    var.subnet_1a_id,
    var.subnet_1c_id,
  ]

  security_groups = [
    var.security_group_id
  ]

  dynamic "access_logs" {
    for_each = var.has_access_logs ? { dummy : "hoge" } : {}
    content {
      bucket  = var.access_log_bucket_name
      prefix  = var.access_log_prefix
      enabled = true
    }
  }

  enable_deletion_protection = var.internal == true ? false : true
  idle_timeout               = 60
  enable_http2               = true

  tags = {
    Name = "${var.system}-${var.project}-${var.environment}-alb"
  }
}
