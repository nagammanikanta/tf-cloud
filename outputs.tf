output "instance" {
 value = google_compute_instance.instance_terra.name
  
}

output "custom" {
    value = google_compute_network.custom-vpc-tf.name
  
}

output "subnet" {
    value = google_compute_subnetwork.subnet-tf
  
}
output "ip" {
    value = google_compute_subnetwork.subnet-tf.ip_cidr_range
  
}
output "firewall" {
    value = google_compute_firewall.firewall-terra.name
  
}
output "static-bucket" {
    value = google_storage_bucket.static-bucket.name
}
output "primary-cluster" {
    value = google_container_cluster.primary-cluster.name
  
}
output "sa_tf" {
  value = google_service_account.sa_tf.name
}
 output "primary_preemptible_nodes" {
    value = google_container_node_pool.primary_preemptible_nodes.node_count
   
 }
 output "vpc-1" {
    value = google_compute_network.vpc-1.name
   
 }
 output "vpc-2" {
   value = google_compute_network.vpc-2.name
 }
 output "vpc-3" {
    value = google_compute_network.vpc-3.name
   
 }
 output "peering1" {
    value = google_compute_network_peering.peering1
   
 }
 output "peering2" {
    value = google_compute_network_peering.peering2
   
 }
 output "peering3" {
 value =  google_compute_network_peering.peering3
 }
 output "peering4" {
  value =  google_compute_network_peering.peering4
   
 }

 


   