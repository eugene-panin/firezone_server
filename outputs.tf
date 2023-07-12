output "vpn_servers_status" {
  value = hcloud_server.firezone_server.status
}

output "vpn_servers_ips" {
  value = hcloud_server.firezone_server.ipv4_address
}