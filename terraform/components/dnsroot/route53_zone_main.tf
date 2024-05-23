resource "aws_route53_zone" "root" {
  name = var.root_domain_name

  delegation_set_id = aws_route53_delegation_set.root.id
}
