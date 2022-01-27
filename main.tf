terraform {
  required_providers {
    hcp = {
      source = "hashicorp/hcp"
      version = "0.22.0"
    }
  }
}

provider "hcp" {
  # Uses HCP_CLIENT_ID and HCP_CLIENT_SECRET environment variables to authenticate
}

resource "hcp_vault_cluster" "example_vault_cluster" {
  hvn_id     = hcp_hvn.example_hvn.hvn_id
  cluster_id = "hcp-tf-example-vault-cluster"
}

resource "hcp_vault_cluster_admin_token" "example_vault_admin_token" {
  cluster_id = hcp_vault_cluster.example_vault_cluster.cluster_id
}
