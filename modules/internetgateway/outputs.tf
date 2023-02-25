# ====================
#
# Outputs
#
# ====================

output "internet_route_id" {
  value = aws_route.tf_route_igw.id
}
