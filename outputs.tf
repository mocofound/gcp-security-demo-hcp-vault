output "VAULT_ADDR" {
    value = hcp_vault_cluster.example_vault_cluster.vault_public_endpoint_url
}

output "VAULT_ADDR_PRIVATE" {
    value = hcp_vault_cluster.example_vault_cluster.vault_private_endpoint_url
}

output "HCP_VAULT_ADMIN_TOKEN" {
    sensitive = true
    value = hcp_vault_cluster_admin_token.example_vault_admin_token.token
}
