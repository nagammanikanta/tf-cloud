resource "google_kms_key_ring" "key-ring-tf" {
  name     = var.key-ring-tf
  location = "global"
}

resource "google_kms_crypto_key" "crypto-key-tf" {
  name            = var.crypto-key-tf
  key_ring        = google_kms_key_ring.key-ring-tf.id
  

  lifecycle {
    prevent_destroy =  false
  }
}

