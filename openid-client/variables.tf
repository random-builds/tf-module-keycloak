variable "realm_name" {
  type = string
}

variable "client_name" {
  type = string
}

variable "client_id" {
  type = string
}

variable "enabled" {
  type    = bool
  default = true
}

variable "valid_redirect_uris" {
  type = set(string)
}

variable "extra_configs" {
  type    = map(string)
  default = {}
}

variable "KEYCLOAK_URL" {
  type = string
}

variable "KEYCLOAK_CLIENT_ID" {
  type      = string
  sensitive = true
}

variable "KEYCLOAK_CLIENT_SECRET" {
  type      = string
  sensitive = true
}