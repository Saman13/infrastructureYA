Это конфиг терраформа для создания ВМ в яндекс облаке для ЯндексПрактикума, урок №5

# infrastructure

.<br>
├── ReadMe.md <br>
├── main.tf<br>
├── modules<br>
│ ├── tf-yc-instance<br>
│ │ ├── ReadMe.md<br>
│ │ ├── main.tf <br>
│ │ ├── outputs.tf <br>
│ │ ├── variables.tf <br>
│ │ └── versions.tf <br>
│ └── tf-yc-network <br>
│ ├── ReadMe.md <br>
│ ├── main.tf <br>
│ ├── outputs.tf <br>
│ ├── variables.tf <br>
│ └── versions.tf <br>
├── outputs.tf <br>
├── provider.tf <br>
├── variables.tf <br>
└── versions.tf <br>

-[ ] main.tf - основная точка входа

Конфиг разделен на 2 модуля. В каждом модуле есть свои файлы:

- [ ] main.tf <br>
- [ ] outputs.tf <br>
- [ ] variables.tf <br>
- [ ] versions.tf <br>

С помощью данного конфига мы получаем в блоке network id сетей и подсетей и передаем их в блок Instance для создания VM
в выбранной подсети

Переменный из глобального файла variables.tf чувствительны и присваиваются в файле terraform.tfvars  
Этот файл нужно создать дополнительно.

Протестировано и работает на версиях:  
terraform = 1.5.7  
yandex >= 0.87.0
