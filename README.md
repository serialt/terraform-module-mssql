# README
A Terraform module to install MSSQL

## Providers
* hashicorp/helm

## Resources
* helm_release.mssql

## Inputs
* helm_repository
* chart_version
* app_version
* name
* namespace
* port
* persistence
* tolerations
* resources
* username
* password


## Outputs
* name
* namespace
* release_name
* chart_version
* app_version
* service_port
* secret
