# proxmox.install-cloud-init-configurations
Installs all shared, archetypal cloud-init configurations and -- optionally -- metadata for
a specific VM.

These role executes the following tasks:
* Copies the contents of files/cloud-config to the cloud-config directory of the proxmox node
* If given a `proxmox__base_vm_name`, generate a machine ID and create a metadata file for a new VM

# Variables

* **`proxmox__base_vm_name`**: base name of a VM to generate metadata for; if null, only the archetypal user-data scripts are installed (Default: null)
* **`proxmox__cloud_config_dataset_path`**: directory on the proxmox host containing config information; should have a 'snippets' subdir (Default: /large-pool/config)
* **`proxmox__use_id_suffix`**: rue if part of the VM's machine ID should be appended to its hostname [Default: true]
