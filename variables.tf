variable "project_id" {}
variable "region" {}
variable "zone" {}

variable "network_name" {
  description = "VPC network name used by firewall rules"
  type        = string
}