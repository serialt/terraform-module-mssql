variable "helm_repository" {
  type    = string
  default = "https://serialt.github.io/helm-charts"
}

variable "chart_version" {
  type    = string
  default = "0.1.1"
}

variable "app_version" {
  type    = string
  default = ""
}

variable "name" {
  type    = string
  default = "mssql"
}

variable "namespace" {
  type    = string
  default = ""
}

variable "port" {
  type    = number
  default = 1433
}

variable "persistence" {
  type = any
  default = {
    enabled = false
    pvc = {
      name = ""
    }
  }
}

variable "tolerations" {
  type = any
  default = [{
    key      = "group"
    operator = "Equal"
    value    = "common"
    effect   = "NoSchedule"
  }]
}

variable "resources" {
  type    = any
  default = {}
}


variable "username" {
  type    = string
  default = "sa"
}

variable "password" {
  type    = string
  default = "Y.sa123456"
}

