output "ip_address" {
  value = yandex_compute_instance.vm-1.network_interface.0.ip_address
}
output "zone" {
  value = var.zone
}

output "instance_subnet_id" {
  value = var.instance_subnet_id
}