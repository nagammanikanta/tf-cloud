


output "sa_tf" {
    value = google_service_account.sa_tf.email
  
}
output "gcp" {
    value =vault_gcp_secret_backend.gcp.path
  
}
output "static_account" {
    value = vault_gcp_secret_static_account.static_account
  
}

