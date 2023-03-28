@echo off
cls
echo Clean up Logs
del /q dns*.txt

echo -----------------------------

echo DNS AAAA List #1
del /q "dns-aaaa-records-list-1\.terraform.lock.hcl"
del /q "dns-aaaa-records-list-1\terraform.tfstate"
rmdir /s /q "dns-aaaa-records-list-1\.terraform"

echo DNS AAAA List #2
del /q "dns-aaaa-records-list-2\.terraform.lock.hcl"
del /q "dns-aaaa-records-list-2\terraform.tfstate"
rmdir /s /q "dns-aaaa-records-list-2\.terraform"

echo DNS AAAA List #3
del /q "dns-aaaa-records-list-3\.terraform.lock.hcl"
del /q "dns-aaaa-records-list-3\terraform.tfstate"
del /q "dns-aaaa-records-list-3\terraform.tfstate.backup"
rmdir /s /q "dns-aaaa-records-list-3\.terraform"

echo DNS AAAA List #4
del /q "dns-aaaa-records-list-4\.terraform.lock.hcl"
del /q "dns-aaaa-records-list-4\terraform.tfstate"
del /q "dns-aaaa-records-list-4\terraform.tfstate.backup"
rmdir /s /q "dns-aaaa-records-list-4\.terraform"

echo DNS AAAA Create
del /q "dns-aaaa-records-create\.terraform.lock.hcl"
del /q "dns-aaaa-records-create\terraform.tfstate"
del /q "dns-aaaa-records-create\terraform.tfstate.backup"
rmdir /s /q "dns-aaaa-records-create\.terraform"

echo -----------------------------

