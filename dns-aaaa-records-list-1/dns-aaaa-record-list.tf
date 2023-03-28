##############################################
## KopiCloud AD API - List DNS AAAA Records ##
##############################################

# List All DNS AAAA Records
data "kopicloud_dns_aaaa_records_list" "test_aaaa_all" {
}

# Returns All DNS AAAA Records
output "OUTPUT_dns_aaaa_records_list_all" {
  description = "List ALL existing DNS AAAA Records"
  value       = data.kopicloud_dns_aaaa_records_list.test_aaaa_all
}

