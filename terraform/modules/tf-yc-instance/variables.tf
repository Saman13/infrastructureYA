variable "zone" {
  default     = "ru-central1-a"
  type        = string
  description = "Instance availability zone"
  validation {
    condition = contains(toset([
      "ru-central1-a", "ru-central1-b", "ru-central1-c", "ru-central1-d"
    ]), var.zone)
    error_message = "Select availability zone from the list: ru-central1-a, ru-central1-b, ru-central1-c, ru-central1-d."
  }
  sensitive = false
  nullable  = false
}
variable "image_id" {
  default     = "fd80qm01ah03dkqb14lc"
  type        = string
  description = "id image of VM"
  sensitive   = false
  nullable    = false
}
variable "instance_subnet_id" {
  default = "e9bra95g807mc61p927h"
}