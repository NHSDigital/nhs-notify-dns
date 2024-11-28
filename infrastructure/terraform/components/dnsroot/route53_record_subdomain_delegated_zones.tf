
resource "aws_route53_record" "subdomain_delegated_zones" {
  for_each = {
    for i, dz in var.delegated_dns_zones :
    dz.subdomain => dz
  }

  zone_id = aws_route53_zone.root.zone_id
  name    = each.value.subdomain
  type    = "NS"
  ttl     = "3600"
  records = each.value.ns_records
}
