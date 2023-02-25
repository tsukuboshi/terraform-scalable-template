# ====================
#
# Variables
#
# ====================

variable "system" {}

variable "project" {}

variable "environment" {}

variable "resourcetype" {}

variable "waf_block_mode" {}

variable "waf_cloudwatch_metrics_enabled" {}

variable "waf_sampled_requests_enabled" {}

variable "alb_arn" {}

variable "has_web_acl_log" {
  default = false
}

variable "waf_log_bucket_arn" {
  default = null
}
