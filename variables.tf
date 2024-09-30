# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "role" {
  description = "Academy role"
  default     = "arn:aws:iam::245903023069:role/LabRole"
}

variable "cluster_name" {
  description = "Cluster name"
  default     = "tech-challenge-73"
}