# ====================
#
# Variables
#
# ====================

variable "system" {}

variable "project" {}

variable "environment" {}

variable "resourcetype" {}

variable "internal" {}

variable "instance_type" {}

variable "subnet_1a_id" {}

variable "subnet_1c_id" {}

variable "associate_public_ip_address" {}

variable "security_group_id" {}

variable "ami_image_id" {}

variable "instance_profile" {}

variable "key_pair_id" {
  default = null
}

variable "user_data_file" {
  default = null
}

variable "ebs_volume_size" {}

variable "ebs_volume_type" {}

variable "ebs_encrypted" {}

variable "outbound_route_ids" {
  default = null
}

variable "target_group_arn" {}

variable "asg_desired_capacity" {}

variable "asg_min_size" {}

variable "asg_max_size" {}
