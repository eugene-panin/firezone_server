terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.39.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.5.1"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "2.3.2"
    }

    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.30"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token
}

