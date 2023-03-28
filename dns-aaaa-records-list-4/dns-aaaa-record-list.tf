##############################################
## KopiCloud AD API - List DNS AAAA Records ##
##############################################

# Create a DNS AAAA Name
resource "random_string" "random" {
  length           = 4
  special          = false
}

# Create a IP Address
resource "random_integer" "ip" {
  min = 1000
  max = 9999
}

# Create a DNS AAAA Record for a computer
resource "kopicloud_dns_aaaa_record" "test_aaaa" {
  hostname     = "labtest${random_string.random.result}"
  ipv6_address = "2340:0023:AABA:0A01:${random_integer.ip.result}:5054:9ABD:ABB0"
  zone_name    = "kopicloud.local"
}

# Output Created DNS AAAA Record 
output "OUTPUT_dns_aaaa_record" {
  description = "Created DNS AAAA Record"
  value       = resource.kopicloud_dns_aaaa_record.test_aaaa
}

# Filter DNS AAAA Records with a Hostname
data "kopicloud_dns_aaaa_records_list" "test_aaaa_hostname" {
  depends_on = [kopicloud_dns_aaaa_record.test_aaaa]

  hostname = "labtest${random_string.random.result}"
}

# Returns all DNS AAAA Records that matches the Hostname
output "OUTPUT_dns_aaaa_records_list_hostname" {
  description = "List existing DNS AAAA Records filtered by Hostname"
  value       = data.kopicloud_dns_aaaa_records_list.test_aaaa_hostname
}

