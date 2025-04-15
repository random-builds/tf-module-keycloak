output "openid_client_details" {
  value = {for client in keycloak_openid_client.openid_client: client.client_id => client.client_secret}
}