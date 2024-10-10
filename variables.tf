# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}
variable "cluster_name" {
  description = "Cluster name"
  default     = "tech-challenge-73"
}

variable "account_id" {
  type        = string
  description = "AWS Academy account id"
}

variable "default_security_group" {
  type        = string
  description = "AWS Academy default security group"
}