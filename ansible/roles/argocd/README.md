# argocd
Bootstraps ArgoCD in a Kubernetes cluster.

# Variables

* **`argocd__admin_password_hash`**: if set, the default ArgoCD password will be changed to the given value; MUST BE A BCRYPT HASH (Default: null)
* **`argocd__helm_repositories`**: Helm repository configuration, suitable for including in argocd-cm (Default: null)
* **`argocd__kubeconfig`**: path to the kubeconfig file to use for cluster connectivity (Default: ~/.kube/config)

## Helm Repository Configuration
The `argocd__helm_repositories` should be a Yaml string that can be inserted into the argocd-cm ConfigMap. See the [ArgoCD documentation](https://argoproj.github.io/argo-cd/operator-manual/declarative-setup/#helm-chart-repositories) for details. An example configuration would look like:

```yaml
argocd__helm_repositories:
    - type: helm
      url: https://storage.googleapis.com/istio-prerelease/daily-build/master-latest-daily/charts
      name: istio.io
```