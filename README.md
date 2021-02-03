# Panos utils.

This repository provides utilites to use the Palto Alto Terraform provider as defined [here](https://registry.terraform.io/providers/PaloAltoNetworks/panos/latest/docs/guides/commits-overview)

## Usage
You can run with an aliased docker command shown below.
```shell
alias panos_commit="docker run us-west2-docker.pkg.dev/red-eight/red8-public/panos_commit:v1.7.0"
panos_commit -h
```
Or more conveniently, add it to your `.bashrc` as shown so it's always available
```shell
echo 'alias panos_commit="docker run us-west2-docker.pkg.dev/red-eight/red8-public/panos_commit:v1.7.0"
panos_commit -h' >> ~/.bashrc
```
