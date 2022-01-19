resource "digitalocean_kubernetes_cluster" "primary" {
  name     = "tnybit-staging-${random_id.cluster_name.hex}"
  region   = digitalocean_vpc.vpc.region
  version  = var.cluster_version
  vpc_uuid = digitalocean_vpc.vpc.id
  node_pool {
    name       = "primary"
    size       = "s-1vcpu-2gb"
    min_nodes  = 1
    max_nodes  = 1
    auto_scale = true
  }
}
