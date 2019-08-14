#!/bin/bash

CLUSTER_NAME=istio-spike
gcloud container clusters delete $CLUSTER_NAME
