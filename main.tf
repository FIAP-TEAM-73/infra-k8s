# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0


locals {
  role_arn = "arn:aws:iam::${var.account_id}:role/LabRole"
}
provider "aws" {
  region = var.region
}

resource "aws_eks_cluster" "tech-challenge-73" {
  name     = var.cluster_name
  role_arn = local.role_arn
  version  = "1.31"
  vpc_config {
    subnet_ids              = [for subnet in data.aws_subnet.subnet : subnet.id if subnet.availability_zone != "${var.region}e"]
    security_group_ids      = [var.default_security_group]
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