# ====================
#
# Variables
#
# ====================


variable "aws_region" {
  default = "ap-northeast-1"
  type    = string
}

variable "availability_zone_1a" {
  default = "ap-northeast-1a"
  type    = string
}

variable "availability_zone_1c" {
  default = "ap-northeast-1c"
  type    = string
}

variable "az_short_name_1a" {
  default = "1a"
  type    = string
}

variable "az_short_name_1c" {
  default = "1c"
  type    = string
}

variable "system" {
  default = "ex"
  type    = string
}

variable "project" {
  default = "scalable"
  type    = string
}

variable "environment" {
  default = "test"
  type    = string
}

variable "internal" {
  default = true
  type    = bool
}

variable "naked_domain" {
  # default = "example.com"
  type = string
}

variable "sub_domain" {
  default = "cm"
  type    = string
}

variable "service_rsrc_type_alb" {
  default = "alb"
  type    = string
}

variable "service_rsrc_type_ec2" {
  default = "ec2"
  type    = string
}

variable "service_rsrc_type_rds" {
  default = "rds"
  type    = string
}

variable "service_rsrc_type_cache" {
  default = "cache"
  type    = string
}

variable "service_rsrc_type_backup" {
  default = "backup"
  type    = string
}

# VPC #
variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  type    = string
}

variable "flow_log_file_format_text" {
  default = "plain-text"
  type    = string
}

variable "flow_log_file_parquet" {
  default = "parquet"
  type    = string
}

# Subnet #
variable "public_subnet_1a_cidr_block" {
  default = "10.0.0.0/24"
  type    = string
}

variable "public_subnet_1c_cidr_block" {
  default = "10.0.1.0/24"
  type    = string
}

variable "private_subnet_1a_cidr_block" {
  default = "10.0.2.0/24"
  type    = string
}

variable "private_subnet_1c_cidr_block" {
  default = "10.0.3.0/24"
  type    = string
}

variable "isolated_subnet_1a_cidr_block" {
  default = "10.0.4.0/24"
  type    = string
}

variable "isolated_subnet_1c_cidr_block" {
  default = "10.0.5.0/24"
  type    = string
}

variable "network_rsrc_type_public" {
  default = "public"
  type    = string
}

variable "network_rsrc_type_private" {
  default = "private"
  type    = string
}

variable "network_rsrc_type_isolated" {
  default = "isolated"
  type    = string
}

variable "has_public_ip_to_computer" {
  default = false
  type    = bool
}


# S3 #
variable "s3_rsrc_type_vpc" {
  default = "vpc"
  type    = string
}

variable "s3_rsrc_type_alb" {
  default = "alb"
  type    = string
}

variable "s3_rsrc_type_waf" {
  default = "waf"
  type    = string
}

variable "enabled_s3_acl" {
  default = "ObjectWriter"
  type    = string
}

variable "disabled_s3_acl" {
  default = "BucketOwnerEnforced"
  type    = string
}

variable "object_expiration_days" {
  default = 366
  type    = number
}

# ALB #

variable "access_log_prefix" {
  default = "alb"
  type    = string
}

variable "alb_target_type_ec2" {
  default = "instance"
  type    = string
}

variable "alb_tg_rsrc_type_enduser" {
  default = "enduser"
  type    = string
}

# WAF #
variable "waf_rsrc_type_alb" {
  default = "alb"
  type    = string
}

# EC2 #
variable "instance_type" {
  default = "t3.micro"
  type    = string
}

variable "ebs_volume_size" {
  default = 8
  type    = number
}

variable "ebs_volume_type" {
  default = "gp2"
  type    = string
}

variable "ebs_encrypted" {
  default = false
  type    = bool
}

variable "user_data_file" {
  default = "../../src/user_data_am.tpl"
  type    = string
}

variable "instance_rsrc_type_web" {
  default = "web"
  type    = string
}

# Autoscailing #
variable "asg_desired_capacity" {
  default = 2
  type    = number
}

variable "asg_min_size" {
  default = 0
  type    = number
}

variable "asg_max_size" {
  default = 4
  type    = number
}

# RDS #
variable "db_instance_count" {
  default = 1
  type    = number
}

variable "rds_engine_version" {
  default = "8.0.20"
  type    = string
}

variable "aurora_engine_version" {
  default = "8.0.mysql_aurora.3.01.0"
  type    = string
}

variable "db_instance_class" {
  default = "db.r6g.large"
  type    = string
}

variable "db_root_name" {
  default = "admin"
  type    = string
}

variable "db_root_pass" {
  # default = "password"
  type = string
}

variable "db_storage_type" {
  default = "gp2"
  type    = string
}

variable "db_allocated_storage" {
  default = 100
  type    = number
}

variable "db_max_allocated_storage" {
  default = 1000
  type    = number
}

variable "db_storage_encrypted" {
  default = true
  type    = bool
}

variable "db_backup_retention_period" {
  default = 7
  type    = number
}

variable "db_backup_window" {
  default = "15:00-15:30"
  type    = string
}

variable "db_maintenance_window" {
  default = "Sat:16:00-Sat:16:30"
  type    = string
}

variable "db_performance_insights_enabled" {
  default = "true"
  type    = string
}

variable "db_performance_insights_retention_period" {
  default = 7
  type    = number
}

variable "db_monitoring_interval" {
  default = 60
  type    = number
}

variable "db_auto_minor_version_upgrade" {
  default = false
  type    = bool
}

variable "db_skip_final_snapshot" {
  default = true
  type    = bool
}

variable "db_apply_immediately" {
  default = true
  type    = bool
}

# ElastiCache #

variable "cache_engine_version" {
  default = "6.2"
  type    = string
}

variable "cache_node_type" {
  default = "cache.m6g.large"
  type    = string
}
variable "num_node_groups" {
  default = 1
  type    = number
}

variable "replicas_per_node_group" {
  default = 1
  type    = number
}

variable "cache_snapshot_retention_limit" {
  default = 7
  type    = number
}

variable "cache_snapshot_window" {
  default = "15:00-16:00"
  type    = string
}

variable "cache_maintenance_window" {
  default = "Sat:16:00-Sat:17:00"
  type    = string
}

variable "cache_auto_minor_version_upgrade" {
  default = true
  type    = bool
}
