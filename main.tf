locals {
  mssql = {
    fullnameOverride = var.name

    resources = var.resources
    env = [
      {
        name  = "ACCEPT_EULA",
        value = "y"
      },
      {
        name  = "SA_PASSWORD"
        value = var.password
      }
    ]
  }
}
resource "helm_release" "mssql" {
  name          = var.name
  namespace     = var.namespace
  chart         = "mssql"
  version       = var.chart_version
  repository    = var.helm_repository
  recreate_pods = true

  values = [yamlencode(local.mssql)]

  set {
    name  = "image.tag"
    value = var.app_version
  }

  set {
    name  = "persistence.enabled"
    value = var.persistence.enabled
  }

  set {
    name  = "persistence.existingClaim"
    value = var.persistence.pvc.name
  }
}
