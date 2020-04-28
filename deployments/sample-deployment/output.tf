output "droplet_ids" {
  description = "List of IDs of droplet Droplets"
  value       = module.droplet.droplet_id
}

output "droplet_ipv4_address" {
  description = "List of IPv4 addresses of droplet Droplets"
  value       = module.droplet.ipv4_address
}

output "droplet_ipv6_address" {
  description = "List of IPv6 addresses of droplet Droplets"
  value       = module.droplet.ipv6_address
}

output "droplet_tags" {
  description = "List of tags of droplet Droplets"
  value       = module.droplet.tags
}

output "droplet_volume_attachment_id" {
  description = "List of volume attachment IDs of droplet Droplets"
  value       = module.droplet.volume_attachment_id
}

output "droplet_floating_ip_address" {
  description = "List of floating IP addresses of droplet Droplets"
  value       = module.droplet.floating_ip_address
}
