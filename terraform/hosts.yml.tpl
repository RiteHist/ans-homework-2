---
clickhouse:
  hosts:
    %{~ for host in cent-vms ~}
    ${host.name}:
      ansible_host: ${host.public_ip}
    %{~ endfor ~}
vector:
  hosts:
    %{~ for host in deb-vms ~}
    ${host.name}:
      ansible_host: ${host.public_ip}
    %{~ endfor ~}

