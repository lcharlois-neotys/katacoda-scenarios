# Charts

A chart is how an application is packaged using Helm.

Installing a chart means deploying an application on the kubernetes cluster.

Charts are stored inside repositories. The first thing to do is to add a repository to your Helm configuration.

## Adding a repository

In this scenario you will use the [Bitnami repository](https://github.com/bitnami/charts).

`helm repo add bitnami https://charts.bitnami.com/bitnami`{{execute}}

## Installing nginx

Now you can install a chart from the Bitnami repository.
When you [install a chart](https://helm.sh/docs/intro/using_helm/#helm-install-installing-a-package) you should give it a release name

Let's try will the nginx chart.

`helm install my-release bitnami/nginx`{{execute}}



