# instance

модуль использует провайдер <br>
yandex = {  
&#160;&#160;&#160;&#160;source = "yandex-cloud/yandex"  
&#160;&#160;&#160;&#160;version = ">= 0.87.0"

В переменных можно задать параметры

- [ ] zone  
  &#160;&#160;&#160;&#160;default = "ru-central1-a"

- [ ] image_id - id образа ВМ  
  &#160;&#160;&#160;&#160;default = "fd80qm01ah03dkqb14lc"

- [ ] instance_subnet_id - id подсети в которой создастся ВМ  
  &#160;&#160;&#160;&#160;default = "e9bra95g807mc61p927h"

На выходе мы получим ip адрес созданной машины.
