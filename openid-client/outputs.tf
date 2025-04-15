output "openid_client_secret" {
  value = keycloak_openid_client.this.client_secret
  sensitive = true
}