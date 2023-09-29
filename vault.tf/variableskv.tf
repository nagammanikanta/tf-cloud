variable "project_id" {
  type=string
  description = "data-rainfall-396303"
  
}
variable "zone" {
  type = string
default = "us-central1-a"
}
variable "region" {
  type = string
 default  = "us-central1"
}

variable "this" {
  type = string
  
  default ="my-awesome-account"
  
}
variable "static_account" {
  type = string
  default = "project-owner"
}
variable "secret_type" {
  type = string
  default = "access-token"
  
}

variable "gcp" {
  type = string
  default = "projects/880089628389/secrets/secret-11"
  
}
variable "roles" {
  default = "roles/owner"
  
}