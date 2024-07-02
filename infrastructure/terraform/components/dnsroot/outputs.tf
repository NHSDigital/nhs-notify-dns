output "aws_account_id" {
  value = var.aws_account_id
}

output "r53_delegation_set_id" {
  value = aws_route53_delegation_set.root.id
}

output "r53_delegation_set_nameservers" {
  value = aws_route53_delegation_set.root.name_servers
}

output "r53_root_domain_name" {
  value = aws_route53_zone.root.name
}

output "r53_root_domain_id" {
  value = aws_route53_zone.root.id
}
