#!/bin/bash

kubectl create -f tiller-role-sa-bind.yml
helm init --service-account tiller
