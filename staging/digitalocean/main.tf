terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

resource "digitalocean_vpc" "vpc" {
  name     = var.vpc_name
  region   = var.region
  ip_range = var.vpc_cidr
}

resource "random_id" "cluster_name" {
  byte_length = 6
}
