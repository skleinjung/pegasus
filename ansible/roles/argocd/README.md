# k3s.install
Bootstraps ArgoCD in a Kubernetes cluster. If `argocd__root_application_url` is not specified, then ArgoCD will be configured but no root application will be deployed.

# Variables

* **`argocd__admin_password_hash`**: if set, the default ArgoCD password will be changed to the given value; MUST BE A BCRYPT HASH (Default: null)
* **`argocd__helm_repositories`**: Helm repository configuration, suitable for including in argocd-cm (Default: null)
* **`argocd__kubeconfig`**: path to the kubeconfig file to use for cluster connectivity (Default: ~/.kube/config)
* **`argocd__root_application_name`**: name of the ArgoCD root application (Default: root)
* **`argocd__root_application_path`**: path inside the repositoryh of the ArgoCD root application (Default: /)
* **`argocd__root_application_revision`**: git revision of the ArgoCD root application (Default: master)
* **`argocd__root_application_url`**: git URL of the ArgoCD root application (Required)

## Helm Repository Configuration
The `argocd__helm_repositories` should be a Yaml string that can be inserted into the argocd-cm ConfigMap. See the [ArgoCD documentation](https://argoproj.github.io/argo-cd/operator-manual/declarative-setup/#helm-chart-repositories) for details. An example configuration would look like:

```yaml
argocd__helm_repositories:
    - type: helm
      url: https://storage.googleapis.com/istio-prerelease/daily-build/master-latest-daily/charts
      name: istio.io
```

# k3s_server__ip_start: first IP address in the range assigned to this cluster [Required]
# k3s_server__ip_start: e.g., 10.0.1.100

# k3s_server__ip_end: last IP address in the range assigned to this cluster [Required]
# k3s_server__ip_end: e.g., 10.0.1.199