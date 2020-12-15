# Getting the values

A release is created from a Helm chart and can be customized using *values*.
Let's see what the current *values* of our release are.

`helm get values my-release`{{execute}}

As you can see, this release use no values.

# Defining values

Values is a set of parameter that you can set to change the configuration of the deployed application.

The chart we use in this scenario, allows us to define values for deploying a static site from git (as documented [here](https://artifacthub.io/packages/helm/bitnami/nginx#deploying-your-custom-web-application)).

Let's create a file named `nginx-values.yaml`.

```
cat << EOF > ./nginx-values.yaml
cloneStaticSiteFromGit:
  enabled: true
  repository: "https://github.com/mdn/beginner-html-site-styled.git"
  branch: master
EOF
```{{execute}}


# Upgrading the release

Now, we need to apply this new configuration to the application we deployed before.
That's one of the purpose of the `helm upgrade` command.

`helm upgrade my-release bitnami/nginx -f nginx-values.yaml`{{execute}}

Run the following command and wait for the pod to be 'Running'.

`kubectl get pods`{{execute}}



