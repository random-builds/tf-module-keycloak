variable "realm_name" {
  type = string
}

variable "groups" {
  type = map(object({
    members = optional(list(string), [])
    attributes = optional(map(string), {})
  }))
}

variable "users" {
  type = map(object({
    enabled = optional(bool, true)
    email = optional(string)
    first_name = string
    last_name  = string
  }))
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