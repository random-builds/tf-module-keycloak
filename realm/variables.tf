variable "realm_name" {
  type = string
}

variable "KEYCLOAK_URL" {
  type = string
}

variable "KEYCLOAK_CLIENT_ID" {
  type = string
  sensitive = true
}

variable "KEYCLOAK_CLIENT_SECRET" {
  type = string
  sensitive = true
}