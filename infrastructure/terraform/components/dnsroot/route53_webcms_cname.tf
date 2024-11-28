resource "aws_route53_record" "cms_cname" {
  zone_id = aws_route53_zone.root.id
  name    = var.cms_cname
  type    = "CNAME"
  ttl     = 5

  records = ["nhsdigital.github.io"]
}
