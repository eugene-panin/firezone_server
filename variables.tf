variable "hcloud_token" {
  type = string
  default = ""
}

variable "hcloud_location" {
  default = "nbg1"
}

variable "hcloud_server_type" {
  default = "cx21"
}

variable "hcloud_os_type" {
  default = "ubuntu-22.04"
}

variable "hcloud_disk_size" {
  default = "40"
}

variable "hcloud_ip_range" {
  default = "10.0.1.0/24"
}

variable "hcloud_ssh_key" {
  type    = string
  default = "~/.ssh/id_rsa"
}

variable "aws_access_key" {
  type = string
  default = ""
}

variable "aws_secret_key" {
  type = string
  default = ""
  sensitive = true
}

variable "database_password" {
  type    = string
  default = ""
}

variable "public_keys" {
  type    = list(string)
  default = []
}

variable "sudo_user" {
  type    = string
  default = "devops"
}

variable "admin_user" {
  type    = string
  default = ""
}

variable "install_dir" {
  type    = string
  default = "/opt/firezone"
}

variable "external_url" {
  type    = string
  default = ""
}

variable "app_version" {
  type    = string
  default = "latest"
}

variable "telemetry" {
  type    = bool
  default = false
}