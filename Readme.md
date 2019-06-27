Prepare
=========
1. create security group in aws
2. create keypair in aws
3. vi variables.tf
4. cp openrc.example openrc && vi openrc
5. vi ansible.cfg

Execution
=========

1. source openrc
2. terraform apply
3. ./terra_hosts.js terraform.tfstate inventory/dbs
4. wait all instances are up
5. ansible-playbook -i inventory dbs.yml
