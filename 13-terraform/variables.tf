variable "labels" {
    default = "wcg"
}
variable "image" {
  default = "ghcr.io/owl-sarge/wcg:latest"
}
variable "image_name" {
  default = "wcg"
}
variable "container_port" {
  default = 8888
}
variable "service_name" {
  default = "wcg-tf"
}
variable "service_port" {
  default = 80
}
variable "host_name" {
  default = "wcg-local.com"
}