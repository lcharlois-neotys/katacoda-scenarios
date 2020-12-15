#!/bin/bash

lines=$(kubectl get pods | grep '2/2     Running' | wc -l)
[ $lines -ge 1 ] && echo "done"