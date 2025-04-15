variable "realm_name" {
  type = string
}

variable "keycloak_url" {
  type = string
}

variable "keycloak_client_id" {
  type = string
  sensitive = true
}

variable "keycloak_client_secret" {
  type = string
  sensitive = true
}