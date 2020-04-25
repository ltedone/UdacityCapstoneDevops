#!/usr/bin/env bash

# This create a cluster on Amazon EKS
eksctl create cluster --name prod \
--region eu-north-1 \
--nodegroup-name standard-workers \
--node-type t3.medium \
--nodes 3 \
--nodes-min 1 \
--nodes-max 4 \
--ssh-access \
--ssh-public-key ../Jenkins/JenkinsStoccolma_pub.pem \
--managed