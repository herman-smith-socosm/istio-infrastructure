#!/bin/bash

ISTIO_VERSION=1.2.4

# Install the istio-init chart to bootstrap all the Istio’s CRDs:
helm install /usr/local/share/istio-$ISTIO_VERSION/install/kubernetes/helm/istio-init --name istio-init --namespace istio-system

# Afterwards verify that all 23 Istio CRDs were committed to the Kubernetes api-server
# kubectl get crds | grep 'istio.io\|certmanager.k8s.io' | wc -l