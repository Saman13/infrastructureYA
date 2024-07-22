resource "yandex_compute_instance" "vm-1" {
  name        = "chapter5-std-030-13"
  zone        = var.zone
  platform_id = "standard-v3"
  resources {
    cores  = 2
    memory = 2
  }
  boot_disk {
    initialize_params {
      image_id = var.image_id
    }
  }
  network_interface {
    subnet_id = lookup(var.instance_subnet_id, var.zone)
    nat       = false
  }
  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
  scheduling_policy {
    preemptible = true
  }
}
