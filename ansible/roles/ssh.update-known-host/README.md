# ssh.update-known-host
Role that updates the 'known_hosts' for a target host in instances
where a VM is created for the first time (or recreated). This role will update all hosts in
the ansible inventory with the new key information. This will discard any host identity
for the VM, so use with caution if you are not working with dynamically provisioned hosts.

# Variables

* **`ssh__host_to_update`**: hostname to update ssh known_host keys on (Default: localhost)
* **`ssh__host_with_new_key`**: name of the host that has a new SSH key to register (Required)
* **`ssh__update_global`**: if true, will update a host's global known_hosts, otherwise it will update the user's (Default: false)

