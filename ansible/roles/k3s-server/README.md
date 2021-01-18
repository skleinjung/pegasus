# install.metallb
Creates a new Kubernetes cluster with a single k3s-server node.

# Variables

* **`k3s_server__ip_end`**: last IP address in the range assigned to the new cluster [Required]
* **`k3s_server__ip_start`**: first IP address in the range assigned to the new cluster [Required]
* **`k3s_server__kubectl_users`**: names of users who will have kubectl configured on the new server
