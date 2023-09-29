

resource "vault_gcp_secret_backend" "gcp" {
      path        = "gcp"
  credentials = file("mykey.json")
}

resource "google_service_account" "this" {
  account_id = "my-awesome-account"
}



resource "vault_gcp_secret_static_account" "static_account" {
  backend        = vault_gcp_secret_backend.gcp.path
  static_account = "project_viewer"
  secret_type    = "access_token"
  token_scopes   = ["https://www.googleapis.com/auth/cloud-platform"]

  service_account_email = google_service_account.this.email

  # Optional
  binding {
    resource = "//cloudresourcemanager.googleapis.com/projects/${google_service_account.this.project}"

    roles = [
      "roles/viewer",
    ]
  }
}