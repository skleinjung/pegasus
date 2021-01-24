# proxmox.install-cloud-init-configurations
Installs cloud-init metadata for a specific VM.

# Variables

* **`proxmox__vm_name`**: name of the VM to generate metadata for (Required)
* **`proxmox__cloud_config_dataset_path`**: directory on the proxmox host containing config information; should have a 'snippets' subdir (Default: /large-pool/config)
* **`proxmox__instance_id`**: the instance ID to use; will generate one if null (Default: null)
* **`proxmox__use_id_suffix`**: true if part of the VM's machine ID should be appended to its name [Default: true]
