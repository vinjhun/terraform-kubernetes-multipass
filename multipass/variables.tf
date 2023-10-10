variable "disk" {
  default = "10G"
  type    = string
}
variable "mem" {
  default = "2G"
  type    = string
}
variable "cpu" {
  default = 2
  type    = number
}
variable "masters" {
  default = 1
  type    = number
}
variable "workers" {
  default = 3
  type    = number
}
variable "kube_version" {
  default = "1.28.2-1.1"
  type    = string
}
