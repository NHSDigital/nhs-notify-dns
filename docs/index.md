---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
title: Home
nav_order: 1
---

[![CI/CD Pull Request](https://github.com/NHSDigital/nhs-notify-dns/actions/workflows/cicd-1-pull-request.yaml/badge.svg)](https://github.com/NHSDigital/nhs-notify-repository-dns/actions/workflows/cicd-1-pull-request.yaml)

## NHS Notify DNS Developer Documentation

This repo contains the terraform code used to manage the DNS domains used by NHS Notify, and enables delegating of subdomains to child project domains/accounts.

At present as there is not a defined way of setting up the prerequisites in an automated fashion, and code in this repo has no access to child project domain accounts, a Route 53 Delegation Set https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_delegation_set should be created, and the nameservers given should then be used within this repo to create the necessary NS records to delegate the DNS subdomain(s) required so that the child project domain can use them as required.

