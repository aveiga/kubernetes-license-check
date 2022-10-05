# kubernetes-license-check

## Pre-requisites

- The trivy CLI must be install
- kubectl must be installed
- A Kubernetes cluster

## Generate SBOMs for all the images used in a Kubernetes cluster

- `make sbom`

## Check for forbidden licenses on the full Kubernetes cluster

- `make check`

## References

- [List all running container images](https://kubernetes.io/docs/tasks/access-application-cluster/list-all-running-container-images/)
- [trivy CLI docs](https://aquasecurity.github.io/trivy/v0.32/docs/)
