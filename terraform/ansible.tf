resource "local_file" "hosts_template" {
    content = templatefile("${path.module}/hosts.yml.tpl", {
        cent-vms = module.test-vm-cent.vm-network
        deb-vms = module.test-vm-deb.vm-network
    })
    filename = "${path.module}/../playbook/inventory/hosts.yml"
}