#!/bin/bash

PROJECT_ID=sqn-development
CLUSTER_NAME=istio-spike
CLUSTER_ZONE=europe-west1-b

gcloud container clusters get-credentials $CLUSTER_NAME \
    --zone $CLUSTER_ZONE \
    --project $PROJECT_ID