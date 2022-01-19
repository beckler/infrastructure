variable "do_token" {
  description = "Digital Ocean Personal access token"
  type        = string
  default     = ""
}

variable "region" {
  description = "Digital Ocean region"
  type        = string
  default     = "nyc1"
}

variable "vpc_name" {
  description = "Digital Ocean VPC Name"
  type        = string
  default     = "tnybit-vpc"
}

variable "vpc_cidr" {
  description = "Digital Ocean VPC CIDR range"
  type        = string
  default     = "10.1.0.0/16"
}

variable "cluster_version" {
  description = "Digital Ocean k8s cluster version"
  type        = string
  default     = "1.21.5-do.0"
}
