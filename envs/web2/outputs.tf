# ====================
#
# Outputs
#
# ====================

output "url_for_enduser" {
  value = "https://${var.sub_domain}.${var.naked_domain}"
}
