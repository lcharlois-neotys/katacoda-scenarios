# Getting the values

Pattati apaptat

`helm get values my-release`{{execute}}

Show empty values

# Defining values

Patati patata

```
cat << EOF > ./nginx-values.yaml
cloneStaticSiteFromGit:
  enabled: true
  repository: "https://github.com/mdn/beginner-html-site-styled.git"
  branch: master
EOF
```{{execute}}


# Upgrading the release

Patati patata

`helm upgrade my-release bitnami/nginx -f nginx-values.yaml`{{execute}}



