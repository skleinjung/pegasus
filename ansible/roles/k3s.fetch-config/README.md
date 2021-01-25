# k3s.install
Fetches the kubeconfig needed to connect to a k3s cluster, and saves it in a specified directory on
the Ansible Controller.

# Variables

* **`k3s__config_path`**: path to store the kubeconfig file at (Default: ~/.kube/config)
* **`k3s__destination_host`**: name of the host to save the kubeconfig file on (Default: localhost)
