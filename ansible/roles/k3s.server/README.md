# k3s.install
Installs k3s (in server mode) on a specific host. This role also modifies

# Variables

* **`k3s__kubeconfig_path`**: base directory for kubeconfig files (Default: /etc/kubeconfig)
* **`k3s__nfs_enabled`**: if true, will configure an NFS storage provisioner in the cluster (Default: false)
* **`k3s__nfs_path`**: export path for the NFS filesystem to store PVCs on (Required if if k3s__nfs_enabled is true)
* **`k3s__nfs_server`**: hostname for the NFS server (Required if if k3s__nfs_enabled is true)

## Indirectly Configured Roles
- argocd

# k3s_server__ip_start: first IP address in the range assigned to this cluster [Required]
# k3s_server__ip_start: e.g., 10.0.1.100

# k3s_server__ip_end: last IP address in the range assigned to this cluster [Required]
# k3s_server__ip_end: e.g., 10.0.1.199