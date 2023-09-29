

resource "vault_gcp_secret_backend" "gcp" {
      path        = var.gcp
  credentials = file("mykey.json")
}

resource "google_service_account" "sa_tf" {
  account_id = var.sa_tf_account_id
}



resource "vault_gcp_secret_static_account" "static_account" {
  backend        = vault_gcp_secret_backend.gcp.path
  static_account = var.static_account
  secret_type    = var.secret_type
 token_scopes   = ["https://www.googleapis.com/auth/cloud-platform"]
  service_account_email = google_service_account.sa_tf.email

  # Optional
  binding {
    resource = "//cloudresourcemanager.googleapis.com/projects/${google_service_account.sa_tf.project}"

    roles = [
      var.roles
    ]
  }
}