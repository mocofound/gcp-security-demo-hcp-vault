output "VAULT_ADDR" {
    value = hcp_vault_cluster.example_vault_cluster.vault_private_endpoint_url
}

output "HCP_VAULT_ADMIN_TOKEN" {
    value = hcp_vault_cluster_admin_token.example_vault_admin_token
}
