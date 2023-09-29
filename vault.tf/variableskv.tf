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

variable "sa_tf_account_id" {
  
  default ="tfmanikanta"
  
}
variable "static_account" {
  type = string
  default = "project-owner"
}
variable "secret_type" {
  type = string
  default = "access_token"
  
}

variable "gcp" {
  type = string
  default = "gcp"
  
}
variable "roles" {
  default = "roles/owner"
  
}