
resource "digitalocean_tag" "env" {
  name = "env:dev"
}

resource "digitalocean_tag" "role" {
  name = "role:linstor"
}

module "droplet" {
  source = "../../modules/droplet/"

  droplet_count = 1
  
  image_name         = "ubuntu-18-04-x64"
  region             = "nyc3"
  droplet_name       = "${var.deployment_name}-linstor-droplet"
  ssh_keys           = var.ssh_key_ids
  droplet_size       = "medium"
  monitoring         = true
  private_networking = true
  ipv6               = false
  floating_ip        = false
  block_storage_size = 0
  tags               = [digitalocean_tag.env.id, digitalocean_tag.role.id]
  user_data          = file("user-data.yml")
}

