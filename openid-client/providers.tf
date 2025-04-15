terraform {
  required_providers {
    keycloak = {
      source = "keycloak/keycloak"
      version = "5.1.1"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.1"
    }
  }
}

provider "keycloak" {
  client_id     = var.KEYCLOAK_CLIENT_ID
  client_secret = var.KEYCLOAK_CLIENT_SECRET
  url           = var.KEYCLOAK_URL
}