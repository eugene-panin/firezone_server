
resource "hcloud_server" "firezone_server" {
  name        = "firezone-server"
  image       = var.hcloud_os_type
  server_type = var.hcloud_server_type
  location    = var.hcloud_location
  ssh_keys    = [hcloud_ssh_key.default.id]
  labels = {
    type = "vpn"
  }
  user_data = data.cloudinit_config.init.rendered
}

resource "hcloud_ssh_key" "default" {
  name       = "hetzner_key"
  public_key = file(var.hcloud_ssh_key)
}