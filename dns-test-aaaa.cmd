@echo off
echo -----------------------------

echo Test Running [DNS AAAA Records List #1]
cd dns-aaaa-records-list-1
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\dns-aaaa-records-list-1-result.txt
terraform apply -auto-approve -no-color >> ..\dns-aaaa-records-list-1-result.txt
cd ..

echo Test Running [DNS AAAA Records List #2]
cd dns-aaaa-records-list-2
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\dns-aaaa-records-list-2-result.txt
terraform apply -auto-approve -no-color >> ..\dns-aaaa-records-list-2-result.txt
cd ..

echo Test Running [DNS AAAA Records List #3]
cd dns-aaaa-records-list-3
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\dns-aaaa-records-list-3-result.txt
terraform apply -auto-approve -no-color >> ..\dns-aaaa-records-list-3-result.txt
terraform destroy -auto-approve -no-color >> ..\dns-aaaa-records-list-3-result.txt
cd ..

echo Test Running [DNS AAAA Records List #4]
cd dns-aaaa-records-list-4
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\dns-aaaa-records-list-4-result.txt
terraform apply -auto-approve -no-color >> ..\dns-aaaa-records-list-4-result.txt
terraform destroy -auto-approve -no-color >> ..\dns-aaaa-records-list-4-result.txt
cd ..

echo Test Running [DNS AAAA Records Create] - Create
cd dns-aaaa-records-create
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\dns-aaaa-records-create.txt
terraform apply -auto-approve -no-color >> ..\dns-aaaa-records-create.txt

echo Test Running [DNS AAAA Records Create] - Destroy
terraform destroy -auto-approve -no-color >> ..\dns-aaaa-records-create.txt
cd ..

echo -----------------------------
