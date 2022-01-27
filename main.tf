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
  hvn_id     = hcp_hvn.hvn1.hvn_id
  cluster_id = "hcp-tf-example-vault-cluster"
}

resource "hcp_vault_cluster_admin_token" "example_vault_admin_token" {
  cluster_id = hcp_vault_cluster.example_vault_cluster.cluster_id
}

resource "hcp_hvn" "hvn1" {
  hvn_id         = "main-hvn"
  cloud_provider = "aws"
  region         = "us-west-2"
  cidr_block     = "172.25.17.0/20"
}
