output "yandex_vpc_subnets" {
  description = "Yandex.Cloud Subnets map"
  value       = data.yandex_vpc_subnet.default
}

output "yandex_vpc_network" {
  value = data.yandex_vpc_network.default.id
}