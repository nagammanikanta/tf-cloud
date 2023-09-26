provider "google" {
  project     = "data-rainfall-396303"
    region      ="us-central1"
    credentials = file("mykey.json")
    zone = "us-central1-a"
}