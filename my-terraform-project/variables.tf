variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "app_service_name" {
  description = "The name of the App Service."
}

variable "location" {
  description = "The Azure region where the resources will be created."
}

variable "resource_group_name" {
  description = "The name of the resource group."
}

variable "service_plan_id" {
  description = "The ID of the App Service Plan."
}
variable "app_service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
}
