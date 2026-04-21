output "web_vm_ips" {
  value = google_compute_instance.web[*].network_interface[0].network_ip
}

output "private_vm_ip" {
  value = google_compute_instance.private_vm.network_interface[0].network_ip
}

output "web_vm_public_ips" {
  value = [for vm in google_compute_instance.web : try(vm.network_interface[0].access_config[0].nat_ip, null)]
}