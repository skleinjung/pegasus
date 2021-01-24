# vm.clone
Role that creates a new VM clone from an already-existing template.

# Variables

* **`vm__inventory_group`**: inventory group for the new VM
* **`vm__clone_basename`**: base name for the new VM,
* **`vm__node`**: proxmox node to create the VM on
* **`vm__node_config_root`**: local path on proxmox host where cloud-config files should be placed
* **`vm__template`**: template to use when clone new VMs (defaults to latest ubuntu server)
* **`vm__timeout`**: number of seconds to wait for proxmox commands before failing