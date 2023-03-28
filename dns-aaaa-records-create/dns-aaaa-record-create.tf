################################################
## KopiCloud AD API - Create DNS AAAA Records ##
################################################

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
  zone_name    = var.zone_name
}

# Output Created DNS AAAA Record 
output "OUTPUT_dns_aaaa_record" {
  description = "Created DNS AAAA Record"
  value       = resource.kopicloud_dns_aaaa_record.test_aaaa
}

output "OUTPUT_dns_aaaa_record_hostname" {
  description = "Hostname of Created DNS AAAA Record"
  value       = resource.kopicloud_dns_aaaa_record.test_aaaa.hostname
}
