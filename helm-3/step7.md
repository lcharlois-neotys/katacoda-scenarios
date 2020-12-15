Until now all operation done using helm has been executed on the kubernetes default namespace.
Let's see how to use a custom namespace.

# Create a namespace

Let's create a new namespace.

`kubectl create namespace nginx-server`{{execute}}

# Installing chart on a given namespace

Let's run `helm install my-release bitnami/nginx -f nginx-values.yaml -n nginx-server`{{execute}}

In this command the nginx chart is deployed inside the `nginx-server` namespace.

# Getting pods

If you run `kubectl get pods`{{execute}} you won't see pods, this is because `kubectl` is searching the pod in the *default* namespace.

You must tell kubectl on which namespace it should search.

`kubectl get pods -n nginx-server`{{execute}}

# Uninstalling chart

In the same way, if you run `helm uninstall my-release`{{execute}} it won't work now.

As for `kubectl`, by default it uses the *default* namespace and you must tell to helm which namespace to use.
Let's try:

`helm uninstall my-release -n nginx-server`{{execute}}
