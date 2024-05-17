variable "root_domain" {
  description = "The root domain"
  default     = "somethingelse.notareaddomain"
}

variable "programme_name" {
  description = "The programme name"
  default     = "nhsnotify"
}

variable "environment_name" {
  description = "Environment name"
  default     = "dev123"
}

variable "environment_type" {
  description = "Environment type"
  default     = "dev"
}

locals {
  default_ns_ttl            = 172800
  default_ns_type           = "NS"
  default_ns_allow_override = true
  domain_name               = "${var.environment_name}.${var.environment_type}.${var.programme_name}.${var.root_domain}"
}

resource "aws_route53_zone" "primary" {
  name = local.domain_name
}
