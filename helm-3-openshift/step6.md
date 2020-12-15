# Retrieving release notes

When you deploy a chart with Helm, a *notes* section is displayed.
Most of the time, notes give you a set of command to execute in order to finalize your deployment.

`helm get notes my-release`{{execute}}

The notes returned in this particular case are 

# Displaying effective yaml files

Helm use a template engine to build kubernetes yaml description files and then deploy these files on kubernetes.
You retrieve the effective yaml file deployed on kubernetes using `helm get manifest`.
Let's try !

`helm get manifest my-release`{{execute}}

# Listing deployed charts

You can easily list all chart already deployed.

`helm list`{{execute}}

# Uninstalling release

You can easily uninstall a chart installed with Helm.

`helm uninstall my-release`{{execute}}

You can check that `helm list`{{execute}} doesn't return your release anymore.