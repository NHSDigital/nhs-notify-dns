variable "webcms_zones" {
  type        = set(string)
  description = "Web CMS Zones"
  default     = ["ns1.example.com", "ns2.example.com", "ns3.example.com", "ns4.example.com"]
}

resource "aws_route53_record" "webCmsZone" {
  allow_overwrite = local.default_ns_allow_override
  name            = "cms"
  ttl             = local.default_ns_ttl
  type            = local.default_ns_type
  zone_id         = aws_route53_zone.primary.zone_id
  records         = var.webcms_zones
}
