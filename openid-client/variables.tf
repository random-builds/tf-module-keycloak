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
  type = bool
  default = true
}

variable "valid_redirect_uris" {
  type = set(string)
}

variable "extra_configs" {
  type = map(string)
  default = {}
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