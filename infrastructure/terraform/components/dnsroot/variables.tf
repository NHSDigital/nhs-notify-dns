##
# Basic Required Variables for tfscaffold Components
##

variable "project" {
  type        = string
  description = "The name of the tfscaffold project"
}

variable "environment" {
  type        = string
  description = "The name of the tfscaffold environment"
}

variable "aws_account_id" {
  type        = string
  description = "The AWS Account ID (numeric)"
}

variable "region" {
  type        = string
  description = "The AWS Region"
}

variable "group" {
  type        = string
  description = "The group variables are being inherited from (often synonmous with account short-name)"
}

##
# tfscaffold variables specific to this component
##

# This is the only primary variable to have its value defined as
# a default within its declaration in this file, because the variables
# purpose is as an identifier unique to this component, rather
# then to the environment from where all other variables come.
variable "component" {
  type        = string
  description = "The variable encapsulating the name of this component"
  default     = "dnsroot"
}

variable "nhs_notify_domain" {
  type        = string
  description = "The name of the NHS Notify Domain that this is deploying to"
}

variable "default_tags" {
  type        = map(string)
  description = "A map of default tags to apply to all taggable resources within the component"
  default     = {}
}


##
# Variables specific to the "dnsroot"component
##

variable "root_domain_name" {
  type        = string
  description = "The root-level domain name to create a zone for onward delegation of subdomains to other services"
}

variable "dns_subdomains" {
  type        = map(any)
  description = "Map of subdomain names to list of nameservers in order to add NS records to delegate DNS"
  default     = {}
}
