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

variable "subnets" {
  description = "Subnet examples"
  default = [
    "subnet-064d88a71e02251cd",
    "subnet-012b5e8a814b71eb6",
    "subnet-063310f277275f467",
    "subnet-08cbd721055b153c3",
    "subnet-0fbbca420a20af35f"
  ]
}


