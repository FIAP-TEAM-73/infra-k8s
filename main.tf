# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "aws" {
  region = var.region
}

resource "aws_eks_cluster" "tech-challenge-73" {
  name     = "tech-challenge-73"
  role_arn = var.role
  version  = "1.30"
  vpc_config {
    subnet_ids              = var.subnets
    security_group_ids      = ["sg-03994733d8fddaebd"]
    endpoint_private_access = true
    endpoint_public_access  = true
  }
  upgrade_policy {
    support_type = "EXTENDED"
  }
  access_config {
    authentication_mode                         = "API_AND_CONFIG_MAP"
    bootstrap_cluster_creator_admin_permissions = true
  }
}