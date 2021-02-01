# argocd
Deploys an application to a Kubernetes cluster using ArgoCD.

# Variables

* **`argocd__kubeconfig`**: path to the kubeconfig file to use for cluster connectivity (Default: ~/.kube/config)
* **`argocd__application_name`**: name of the ArgoCD application (Required)
* **`argocd__application_path`**: path inside the repositoryh of the ArgoCD application (Default: /)
* **`argocd__application_revision`**: git revision of the ArgoCD application (Default: master)
* **`argocd__application_url`**: git URL of the ArgoCD application (Required)
