#!/bin/bash

PROJECT_ID=sqn-development
CLUSTER_NAME=istio-spike
CLUSTER_ZONE=europe-west1-b

gcloud container clusters create $CLUSTER_NAME \
  --enable-network-policy \
  --cluster-version latest \
  --num-nodes 4 \
  --zone $CLUSTER_ZONE \
  --project $PROJECT_ID \
  --enable-autoscaling \
  --min-nodes 4 \
  --max-nodes 20
