#!/usr/bin/env bash

NAMESPACE=argo-cd
ARGOCD_RELEASE=argo-cd
ROOT_RELEASE=root

helm upgrade --install $ARGOCD_RELEASE argo-cd --create-namespace --namespace $NAMESPACE --repo https://argoproj.github.io/argo-helm

helm upgrade --install $ROOT_RELEASE ./charts/root -n $NAMESPACE

