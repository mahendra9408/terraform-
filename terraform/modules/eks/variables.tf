variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "The version of the EKS cluster"
  type        = string
}

variable "vpc_id" {
  description = "The VPC ID to deploy the EKS cluster in"
  type        = string
}

variable "subnet_ids" {
  description = "A list of subnet IDs for the EKS cluster"
  type        = list(string)
}

variable "node_groups" {
  description = "Configuration for the EKS worker node groups"
  type        = any
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
}
