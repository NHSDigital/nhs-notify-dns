locals {
  parent_fqdn_nodot = trimsuffix(var.parent_domain, ".")

  subdomain_nodot = trimsuffix(var.subdomain, ".")

  subdomain_fqdn = endswith(local.subdomain_nodot, local.parent_fqdn_nodot) ? "${local.subdomain_nodot}." : "${local.subdomain_nodot}.${local.parent_fqdn_nodot}."

  nameservers_fqdn = [for nameserver in var.nameservers : "${trimsuffix(nameserver, ".")}."]
}

resource "aws_route53_record" "subdomain_ns" {
  zone_id = var.parent_zone_id
  name    = local.subdomain_fqdn
  type    = "NS"
  ttl     = "3600"
  records = local.nameservers_fqdn
}
