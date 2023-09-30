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

module "vault" {
  // source = "terraform-google-modules/vault/google"

  source     = "../../"
  project_id = var.project_id
  region     = var.region

  kms_keyring    = var.key-ring-terra
  kms_crypto_key = var.crypto-key-terra

}

