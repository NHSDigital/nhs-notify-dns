# Variables shared by any environment that chooses to be subscribed to it
group = "nhs-notify-dns-dev"

aws_account_id = "767397753705"

# Primary DNS zone for this group
#   Note the dev.tfvars environment overloads this
root_domain_name = "nonprod.nhsnotify.national.nhs.uk"
