module "tf-yc-instance" {
  source             = "./modules/tf-yc-instance"
  image_id           = "fd80qm01ah03dkqb14lc"
  instance_subnet_id = module.tf-yc-network.yandex_vpc_subnet_id
}

module "tf-yc-network" {
  source        = "./modules/tf-yc-network"
  instance_zone = module.tf-yc-instance.zone
}

