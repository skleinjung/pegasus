# proxmox.clone-vm
Role that creates a new VM clone from an already-existing template.

# Variables

* **`proxmox__inventory_group`**: inventory group for the new VM
* **`proxmox__clone_type`**: btype for the new VM, which will build the name and user-data scripts
* **`proxmox__node`**: proxmox node to create the VM on
* **`proxmox__node_config_root`**: local path on proxmox host where cloud-config files should be placed
* **`proxmox__template`**: template to use when clone new VMs (defaults to latest ubuntu server)
* **`proxmox__timeout`**: number of seconds to wait for proxmox commands before failing