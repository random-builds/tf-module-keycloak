data "keycloak_realm" "this" {
  realm = var.realm_name
}

resource "keycloak_openid_client" "this" {
  realm_id            = data.keycloak_realm.this.id
  client_id           = var.client_id

  name                = var.client_name
  enabled             = var.enabled

  standard_flow_enabled = true
  service_accounts_enabled = true

  implicit_flow_enabled = false
  direct_access_grants_enabled = false
  oauth2_device_authorization_grant_enabled = false

  access_type         = "CONFIDENTIAL"
  valid_redirect_uris = var.valid_redirect_uris

  extra_config = var.extra_configs
}

# resource "keycloak_openid_client_service_account_role" "this" {
#   client_id               = keycloak_openid_client.openid_client.id
#   realm_id                = keycloak_openid_client.openid_client.realm_id
#   role                    = data.keycloak_role.admin
#   service_account_user_id = keycloak_openid_client.openid_client.service_account_user_id
# }
#
# data "keycloak_role" "admin" {
#   name     = "admin"
#   realm_id = keycloak_realm.realm.id
# }

resource "keycloak_openid_client_default_scopes" "client_default_scopes" {
  realm_id  = data.keycloak_realm.this.id
  client_id = keycloak_openid_client.this.id

  default_scopes = [
    "profile",
    "email",
    "roles",
    "web-origins",
    "basic",
    "groups",
  ]
}