environment = "dev"
group       = null

aws_account_id = "767397753705"

root_domain_name = "dev.nhsnotify.national.nhs.uk"

# Define subdomains as per below, with the subdomain name as the key, and the list of nameservers as the value
# You can get the list of nameservers from the subdomain zone once it is created in the child account
dns_subdomains = {
  #subdomain-a = [
  #  "ns-1587.awsdns-06.co.uk",
  #  "ns-367.awsdns-45.com",
  #  "ns-617.awsdns-13.net",
  #  "ns-1158.awsdns-16.org",
  #]
  #
  #subdomain-b = [
  #  "ns-1587.awsdns-06.co.uk",
  #  "ns-367.awsdns-45.com",
  #  "ns-617.awsdns-13.net",
  #  "ns-1158.awsdns-16.org",
  #]
}
