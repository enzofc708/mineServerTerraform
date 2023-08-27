variable "admin_password" {
  type = string
  description = "Password used to connect to the machine via SSH"
}

variable "admin_username"{
    type = string
    description = "Name of the admin user of the machine"
    default = "minecraft"
}

variable "machine_size" {
    type = string
    description = "Size of the machine hosting the minecraft server"
    default = "Standard_B2s"
}