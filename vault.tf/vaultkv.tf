terraform {
  required_providers {
    vault = {
      source = "hashicorp/vault"
      version = "3.20.1"
    }
  }
}

provider "vault" {

  address = "projects/880089628389/secrets/secret-11"

  skip_tls_verify = true
  

resource "vault_gcp_secret_backend" "gcp" {
      path        = var.gcp
  credentials = file("mykey.json")
}

resource "google_service_account" "sa_tf_account_id" {
  account_id = var.sa_tf_account_id
}



resource "vault_gcp_secret_static_account" "static_account" {
  backend        =vault_gcp_secret_backend.gcp.path
  static_account = var.static_account
  secret_type    = var.secret_type
 token_scopes   = ["https://www.googleapis.com/auth/cloud-platform"]
  service_account_email = google_service_account.sa_tf_account_id.email

  # Optional
  binding {
    resource = "//cloudresourcemanager.googleapis.com/projects/${google_service_account.sa_tf_account_id.project}"

    roles = [
      var.roles
    ]
  }
}
}