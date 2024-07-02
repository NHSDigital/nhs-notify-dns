module "dnsdel_subdomains" {
  for_each = var.dns_subdomains

  source = "../../modules/dnsdel"

  project        = var.project
  environment    = var.group
  component      = var.component
  aws_account_id = var.aws_account_id
  region         = var.region
  default_tags   = local.default_tags

  parent_zone_id = aws_route53_zone.root.id
  parent_domain  = aws_route53_zone.root.name
  subdomain      = each.key
  nameservers    = each.value
}
