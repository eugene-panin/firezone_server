resource "random_password" "database_password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "random_password" "admin_password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}


data "cloudinit_config" "init" {
  gzip          = false
  base64_encode = false

  part {
    filename     = "cloud-config.yaml"
    content_type = "text/cloud-config"
    content = templatefile("user_data.tftpl", {
      admin_password    = random_password.admin_password.result
      sudo_user         = var.sudo_user,
      public_keys       = var.public_keys,
      admin_email       = var.admin_user,
      domain_name       = var.external_url,
      database_password = random_password.database_password.result,
      telemetry         = var.telemetry,
      version           = var.app_version
    })
  }
}