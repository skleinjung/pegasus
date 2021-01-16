# util.update-ssh-identity
Role that updates the 'known_hosts' for a target user/target host combination in instances
where a VM is created for the first time (or recreated). This will discard any host identity
for the VM, so use with caution if you are not working with dynamically provisioned hosts.

# Variables

* **`util__new_host`**: the host whose identity should be updated
* **`util__target_host`**: the host containing the ssh known_hosts to update
* **`util__target_user`**: the user whose known_hosts is to be updated
