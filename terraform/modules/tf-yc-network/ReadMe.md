# network

модуль использует провайдер <br>
yandex = {  
&#160;&#160;&#160;&#160;source = "yandex-cloud/yandex"  
&#160;&#160;&#160;&#160;version = ">= 0.87.0"

В переменных можно задать параметры

- [ ] network_zones  
  &#160;&#160;&#160;&#160;default = "ru-central1-a"

- [ ] image_id - id образа ВМ  
  Это лист значений состоящий из:
- ru-central1-a
- ru-central1-b
- ru-central1-c
- ru-central1-d

На выходе мы получим id всех подсетей в сети default