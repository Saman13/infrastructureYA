terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.87.0"
    }
  }
}

provider "yandex" {
  cloud_id  = "b1g3jddf4nv5e9okle7p"
  folder_id = "b1g5is7gp1rqgbmu21r8"
  zone      = "ru-central1-a"
}

resource "yandex_compute_instance" "vm-1" {
    name = "chapter5-lesson2-std-030-13"

    # Конфигурация ресурсов:
    # количество процессоров и оперативной памяти
    resources {
        cores  = 2
        memory = 2
    }

    # Загрузочный диск:
    # здесь указывается образ операционной системы
    # для новой виртуальной машины
    boot_disk {
        initialize_params {
            image_id = "fd80qm01ah03dkqb14lc"
        }
    }

    # Сетевой интерфейс:
    # нужно указать идентификатор подсети, к которой будет подключена ВМ
    network_interface {
        subnet_id = "e9bd4vf8tm60md55lp0k"
        nat       = false
    }

    # Метаданные машины:
    # здесь можно указать скрипт, который запустится при создании ВМ
    # или список SSH-ключей для доступа на ВМ
    metadata = {
        ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
    }
}

output "ip_address" {
    value = yandex_compute_instance.vm-1.network_interface.0.ip_address
}

