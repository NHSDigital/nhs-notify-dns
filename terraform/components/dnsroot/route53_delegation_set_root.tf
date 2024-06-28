resource "aws_route53_delegation_set" "root" {
  reference_name = var.root_domain_name
}
