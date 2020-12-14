#!/bin/bash

NODE_PORT=$(kubectl get svc -o jsonpath='{.items[*].spec.ports[?(@.name=="http")].nodePort}')
export $NGINX_URL=http://[[HOST_SUBDOMAIN]]-$NODE_PORT-[[KATACODA_HOST]].[[KATACODA_DOMAIN]]"
echo $NGINX_URL