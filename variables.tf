
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
variable "instance_terra" {
  type = string
  default = "my-instance"
  
  
}
variable "machine_type" {

   default = "e2-medium"
  
}

variable "image" {
  type = string

default  = "debian-12-bookworm-arm64-v20230912"
}



variable "subnet-tf" {
  type = string
  default  = "test-subnet"
  
}
variable "ip_cidr_range" {
  default = "10.2.0.0/16"
  
}
 variable "firewall-terra" {
  type = string
  default = "test-firewall"
   
 }
 variable "source_tags" {
  
  default = ["web"]
   
 }

variable "sa_tf_account_id" {
  
  default ="tfmanikanta"
  
}
variable "sa_tf_display_name" {
  default = "service-tf"
  
}


variable "custom-vpc-tf" {
  type = string
  default = "my-network-tf"
  
}
variable "static-bucket" {
  type = string
  default = "my-gcs-mani"
  
}

variable "location" {
  type = string
  default = "US"
  
}
variable "primary-cluster" {
  type = string
  default = "my-gke-cluster"
  
}
variable "primary_preemptible_nodes" {
  type = string
  default = "my-node-pool"
  
}
variable "node_count" {
  type = number
  default = 2
  
}
variable "node_config" {
  type = bool
  default = true
  
}
variable "auto_create_subnetworks" {
  type = bool
  default = false
  
}
variable "peering1" {
  type = string
  default = "peering1-2"
  description = "peering of two vpcs"
  
}
variable "peering2" {
  type = string
  default = "peering2-1"
   description = "peering of two vpcs"
}
variable "peering3" {
  type = string
  default = "peering3-1"
  description = "peering of two vpcs"

}
variable "peering4" {
  type = string
  default = "peering1-3"
  description = "peering of two vpcs"
}

variable "vpc-1" {
  type = string
  default = "vpc-1"
  
}
variable "vpc-2" {
  type = string
  default = "vpc-2"
  
}
variable "vpc-3" {

  type = string
  default = "vpc-3"
  
}
variable "database_version" {
  type = string
  default = "MYSQL_8_0"
  
}
variable "instance-sql-tf" {
  type = string
  default = "my-database-instance"
  
}
variable "deletion_protection" {
  type = bool
  default = false
  
}
variable "database-tf" {
  type = string
  default = "my-database"
}
variable "tier" {
  type = string
  default = "db-f1-micro"
  
}

  

variable "availability_type" {
  type = string
  default = "REGIONAL"
  
}

variable "users" {
  type = string
  default = "me"
  
}

variable "password" {
  type = string
  default = "changeme"
  
}

variable "host" {
  type = string
  default = "me.com"
  
}
variable "binary_log_enabled" {
  
  type = bool
  default = true
}
variable "enabled" {
  type = bool
  default = true
  
}
variable "key-ring-terra" {
  type        = string
  default     = "key-ring-terra"
 
}

variable "crypto-key-terra" {
  type        = string
  default     = "crypto-key-terra"
 
}



variable "project" {
  type = string
  default = "My-First-Project"
  
}

variable "os-type" {
  type = string
  default = "DESKTOP-CHROME-OS"
  
}

variable "billing_account" {
  type = string
  default = "017B67-EFE040-7F13EF"
  
}






  

