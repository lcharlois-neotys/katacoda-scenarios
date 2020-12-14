#!/bin/bash

NODE_PORT=$(kubectl get svc -o jsonpath='{.items[*].spec.ports[?(@.name=="http")].nodePort}')
echo $NODE_PORT
echo "The URL to access Port 80 is [[HOST_SUBDOMAIN]]-$NODE_PORT-[[KATACODA_HOST]].[[KATACODA_DOMAIN]]"
