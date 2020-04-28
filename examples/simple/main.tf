# variable "do_token" {}
# export your token: export DIGITALOCEAN_TOKEN="your_token_here"

provider "digitalocean" {
  # token = var.do_token
}

resource "digitalocean_tag" "env" {
  name = "env:dev"
}

resource "digitalocean_tag" "role" {
  name = "role:dev"
}

module "web" {
  source = "../../modules/droplet/"

  droplet_count = 1

  droplet_name       = "droplet-test"
  droplet_size       = "nano"
  monitoring         = true
  private_networking = true
  ipv6               = false
  floating_ip        = false
  block_storage_size = 50
  tags               = [digitalocean_tag.env.id, digitalocean_tag.role.id]
  user_data          = file("user-data.web")
}
