variable "admin_group_object_ids" {
  type    = list(string)
  default = []
}

variable "authorized_ip_ranges" {
  type    = list(string)
  default = []
}

variable "enable_auto_scaling" {
  type    = bool
  default = true
}

variable "environment" {
  type = string
}

variable "identifier" {
  type = string
}

variable "identity" {
  type = object({
    type         = string
    identity_ids = optional(list(string))
  })
  default = {
    type         = "SystemAssigned"
    identity_ids = []
  }
}

variable "kubernetes_version" {
  type = string
}

variable "location" {
  type = string
}

variable "log_analytics_workspace_id" {
  type = string
}

# https://learn.microsoft.com/en-us/azure/azure-monitor/reference/supported-logs/microsoft-containerservice-managedclusters-logs
variable "log_categories" {
  type = list(string)
  default = [
    "kube-scheduler",
  ]
}

variable "log_category_groups" {
  type    = list(string)
  default = []
}

variable "metric_categories" {
  type = list(string)
  default = [
    "AllMetrics",
  ]
}

variable "network_plugin" {
  type    = string
  default = "kubenet"
}

variable "network_policy" {
  type    = string
  default = "calico"
}

variable "node_count" {
  type    = number
  default = null
}

variable "node_max_count" {
  type    = number
  default = 3
}

variable "node_min_count" {
  type    = number
  default = 1
}

variable "outbound_type" {
  type    = string
  default = "loadBalancer"
}

variable "os_disk_size_gb" {
  type    = number
  default = 30
}

variable "os_disk_type" {
  type    = string
  default = "Ephemeral"
}

variable "os_sku" {
  type    = string
  default = "Ubuntu"
}

variable "resource_group_name" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "vm_size" {
  type    = string
  default = "Standard_B4ms"
}

variable "zone" {
  type = string
}

variable "zones" {
  type = list(string)
  default = [
    "1",
    "2",
    "3"
  ]
}
