resource "aws_wafv2_web_acl" "tf_wafv2_web_acl" {
  name  = "${var.system}-${var.project}-${var.environment}-${var.resourcetype}-waf-wacl"
  scope = "REGIONAL"

  default_action {
    allow {}
  }

  rule {
    name     = "AWS-AWSManagedRulesCommonRuleSet"
    priority = 1

    override_action {
      dynamic "none" {
        for_each = var.waf_block_mode ? { dummy : "hoge" } : {}
        content {}
      }

      dynamic "count" {
        for_each = var.waf_block_mode ? {} : { dummy : "hoge" }
        content {}
      }
    }

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = var.waf_cloudwatch_metrics_enabled
      metric_name                = "AWSManagedRulesCommonRuleSetMetric"
      sampled_requests_enabled   = var.waf_sampled_requests_enabled
    }
  }

  rule {
    name     = "AWS-AWSManagedRulesKnownBadInputsRuleSet"
    priority = 2

    override_action {
      dynamic "none" {
        for_each = var.waf_block_mode ? { dummy : "hoge" } : {}
        content {}
      }

      dynamic "count" {
        for_each = var.waf_block_mode ? {} : { dummy : "hoge" }
        content {}
      }
    }

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesKnownBadInputsRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = var.waf_cloudwatch_metrics_enabled
      metric_name                = "AWSManagedRulesKnownBadInputsRuleSetMetric"
      sampled_requests_enabled   = var.waf_sampled_requests_enabled
    }
  }

  rule {
    name     = "AWS-AWSManagedRulesSQLiRuleSet"
    priority = 3

    override_action {
      dynamic "none" {
        for_each = var.waf_block_mode ? { dummy : "hoge" } : {}
        content {}
      }

      dynamic "count" {
        for_each = var.waf_block_mode ? {} : { dummy : "hoge" }
        content {}
      }
    }

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesSQLiRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = var.waf_cloudwatch_metrics_enabled
      metric_name                = "AWSManagedRulesSQLiRuleSetMetric"
      sampled_requests_enabled   = var.waf_sampled_requests_enabled
    }
  }

  rule {
    name     = "AWS-AWSManagedRulesLinuxRuleSet"
    priority = 4

    override_action {
      dynamic "none" {
        for_each = var.waf_block_mode ? { dummy : "hoge" } : {}
        content {}
      }

      dynamic "count" {
        for_each = var.waf_block_mode ? {} : { dummy : "hoge" }
        content {}
      }
    }

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesLinuxRuleSet"
        vendor_name = "AWS"
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = var.waf_cloudwatch_metrics_enabled
      metric_name                = "AWSManagedRulesLinuxRuleSetMetric"
      sampled_requests_enabled   = var.waf_sampled_requests_enabled
    }
  }

  rule {
    name     = "AWS-AWSManagedRulesAmazonIpReputationList"
    priority = 5

    override_action {
      dynamic "none" {
        for_each = var.waf_block_mode ? { dummy : "hoge" } : {}
        content {}
      }

      dynamic "count" {
        for_each = var.waf_block_mode ? {} : { dummy : "hoge" }
        content {}
      }
    }

    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesAmazonIpReputationList"
        vendor_name = "AWS"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = var.waf_cloudwatch_metrics_enabled
      metric_name                = "AWSManagedRulesAmazonIpReputationListMetric"
      sampled_requests_enabled   = var.waf_sampled_requests_enabled
    }
  }


  visibility_config {
    cloudwatch_metrics_enabled = var.waf_cloudwatch_metrics_enabled
    metric_name                = "TerraformWebACLMetric"
    sampled_requests_enabled   = var.waf_sampled_requests_enabled
  }
}

resource "aws_wafv2_web_acl_association" "tf_wafv2_web_acl_alb" {
  resource_arn = var.alb_arn
  web_acl_arn  = aws_wafv2_web_acl.tf_wafv2_web_acl.arn
}

resource "aws_wafv2_web_acl_logging_configuration" "tf_wafv2_web_acl_log" {
  count                   = var.has_web_acl_log ? 1 : 0
  log_destination_configs = [var.waf_log_bucket_arn]
  resource_arn            = aws_wafv2_web_acl.tf_wafv2_web_acl.arn
}
