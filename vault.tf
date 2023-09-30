resource "google_kms_key_ring" "key-ring-terra" {
  name     = var.key-ring-terra
  location = var.location
}

resource "google_kms_crypto_key" "crypto-key-terra" {
  name            = var.crypto-key-terra
  key_ring        = google_kms_key_ring.key-ring-terra.id
  

  lifecycle {
    prevent_destroy =  false
  }
}

