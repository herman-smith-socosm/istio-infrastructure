#!/bin/bash

ISTIO_VERSION=1.2.4

helm install /usr/local/share/istio-$ISTIO_VERSION/install/kubernetes/helm/istio --name istio --namespace istio-system \
--values /usr/local/share/istio-$ISTIO_VERSION/install/kubernetes/helm/istio/values-istio-demo.yaml
