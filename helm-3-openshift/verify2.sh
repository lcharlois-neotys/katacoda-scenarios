#!/bin/bash

lines=$(kubectl get pods | grep '1/1     Running' | wc -l)
[ $lines -ge 1 ] && echo "done"