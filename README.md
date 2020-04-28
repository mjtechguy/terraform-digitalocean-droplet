# terraform-digitalocean-droplets
Terraform module which creates Droplet(s) and optionally, Block Storage Volumes,
Floating IPs, Load Balancers and DNS Records on DigitalOcean.

# Modified from:
https://github.com/terraform-digitalocean-modules/terraform-digitalocean-droplet

# Why modify?

* The default deployment did not allow for multiple deployments based on the same "module" in tree and local easily. I do not like pulling from a remote source for my modules and you shouldn't either.

# To deploy:

* Copy `deployments/sample-deployment` to a new directory for your desired deployment
* Copy keys.tf.sample to keys.tf and update values
* Modify your-deployment/main.tf with the desired values for number of servers and other settings
* Run terraform plan and terraform deploy

# To destroy:

* Run terrraform destroy from within `your-deployment` directory

# To Do

* Add remote state with S3 bucket or other
* Clarify documentation
* Record video or screencapture for clarity




