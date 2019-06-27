#!/usr/bin/node

tfstate_file = process.argv[2];
inventory_file = process.argv[3];

const fs = require('fs');

var rawdata = fs.readFileSync(tfstate_file);
var instances = JSON.parse(rawdata);
var user = '';
var inventory_content = '';

for(var i in instances.resources){
    if(instances.resources[i].name=='clickhouse1' || instances.resources[i].name=='clickhouse2' || instances.resources[i].name=='clickhouse3'){
        user = 'ubuntu';
    }else{
        user = 'centos';
    }
    inventory_content+="["+instances.resources[i].name+"]\n";
    inventory_content+=instances.resources[i].name+
        " ansible_ssh_host="+instances.resources[i].instances[0].attributes.public_ip+
        " ansible_ssh_user="+user+
        " private_dns="+instances.resources[i].instances[0].attributes.private_dns+
        " private_ip="+instances.resources[i].instances[0].attributes.private_ip+
        " public_dns="+instances.resources[i].instances[0].attributes.public_dns+
        "\n";
}
fs.writeFile(inventory_file, inventory_content,function(err){});
