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
  hostname     = "computer${random_string.random.result}"
  ipv6_address = "2340:0023:AABA:0A01:${random_integer.ip.result}:5054:9ABD:ABB0"
  zone_name    = "kopicloud.local"
}

# Output Created DNS AAAA Record 
output "OUTPUT_dns_aaaa_record" {
  description = "Created DNS AAAA Record"
  value       = resource.kopicloud_dns_aaaa_record.test_aaaa
}

# Filter DNS AAAA Records with an IPv6 Address 
data "kopicloud_dns_aaaa_records_list" "test_aaaa_ip" {
  depends_on = [kopicloud_dns_aaaa_record.test_aaaa]
  
  ipv6_address = "2340:0023:AABA:0A01:${random_integer.ip.result}:5054:9ABD:ABB0"
}

# Returns all DNS AAAA Records that matches the IPv6 Address 
output "OUTPUT_dns_aaaa_records_list_ip_address" {
  description = "List existing DNS AAAA Records filtered by IPv6 Address"
  value       = data.kopicloud_dns_aaaa_records_list.test_aaaa_ip
}

