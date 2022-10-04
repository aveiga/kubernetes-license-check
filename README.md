# kubernetes-license-check

## Pre-requisites

- The trivy CLI must be install
- kubectl must be installed
- A Kubernetes cluster

## Generate SBOMs for all the images used in a Kubernetes cluster

- `make sbom`

## Check for forbidden licenses on the full Kubernetes cluster

- `make check`
