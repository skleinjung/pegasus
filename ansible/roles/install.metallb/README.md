# install.metallb
Installs metalllb into a Kubernetes cluster.

# Variables

* **`metallb__version`**: version of metallb to install
* **`metallb__ip_start`**: first IP address in the range managed by metallb [Required]
* **`metallb__ip_end`**: last IP address in the range managed by metallb [Required]