##
# Basic Required Variables for tfscaffold Components
#
# Commented out until needed.
#
# No resources in this module accept tags
# or require custom name prefixes
##

variable "project" {
  type        = string
  description = "The name of the tfscaffold project"
}

variable "environment" {
  type        = string
  description = "The name of the tfscaffold environment"
}

variable "component" {
  type        = string
  description = "The name of the tfscaffold component"
}

variable "aws_account_id" {
  type        = string
  description = "The AWS Account ID (numeric)"
}

variable "region" {
  type        = string
  description = "The AWS Region"
}

##
# tfscaffold variables specific to this module
##

variable "module" {
  type        = string
  description = "The variable encapsulating the name of this module"
  default     = "dnsdel"
}

variable "default_tags" {
  type        = map(string)
  description = "A map of default tags to apply to all taggable resources within the component"
  default     = {}
}

##
# Variables specific to this module
##

variable "parent_zone_id" {
  type        = string
  description = "The ID of the parent Route53 Zone to add the NS records to"
}

variable "parent_domain" {
  type        = string
  description = "The name of the parent domain/Route53 Zone"
}

variable "subdomain" {
  type        = string
  description = "The name of the subdomain to add"
}

variable "nameservers" {
  type        = list(string)
  description = "The nameservers that are authoritative for the subdomain"
}
