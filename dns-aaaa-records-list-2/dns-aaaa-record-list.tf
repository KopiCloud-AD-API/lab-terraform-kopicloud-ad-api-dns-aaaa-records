##############################################
## KopiCloud AD API - List DNS AAAA Records ##
##############################################

# Filter DNS AAAA Records with the Zone Name
data "kopicloud_dns_aaaa_records_list" "test_aaaa_zone_name" {
  zone_name = var.zone_name
}

# Returns all DNS AAAA Records that matches the Zone Name
output "OUTPUT_dns_aaaa_records_list_zone_name" {
  description = "List existing DNS AAAA Records filtered by Zone Name"
  value       = data.kopicloud_dns_aaaa_records_list.test_aaaa_zone_name
}

