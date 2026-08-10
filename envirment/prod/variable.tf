variable "rgs" {
  description = "Resource Groups configuration map"
  type        = map(any)
}

variable "vnets" {
  description = "Virtual Networks configuration map"
  type        = map(any)
}

variable "subnet" {
  description = "Subnets configuration map"
  type        = map(any)
}

variable "pips" {
  description = "Public IPs configuration map"
  type        = map(any)
}

variable "nics" {
  description = "Network Interfaces configuration map"
  type        = map(any)
}

variable "vms" {
  description = "Virtual Machines configuration map"
  type        = map(any)
}
