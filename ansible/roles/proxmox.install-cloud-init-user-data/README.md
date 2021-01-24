# proxmox.update-user-data
Installs all shared, archetypal cloud-init user-data configurations.

# Variables

* **`proxmox__cloud_config_dataset_path`**: directory on the proxmox host containing config information; should have a 'snippets' subdir (Default: /large-pool/config)
