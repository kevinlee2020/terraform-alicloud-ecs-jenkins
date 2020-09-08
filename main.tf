# Configure the Alicloud Provider

provider "alicloud" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}


# use template and user_data to run the shell in ECS
data "template_file" "user_data" {
  template = "${file("user-data.sh")}"
}

# Create the new ECS in Alicloud
resource "alicloud_instance" "instance" {
  availability_zone          = var.availability_zone
  security_groups            = var.security_groups
  instance_type              = var.instance_type
  system_disk_category       = var.system_disk_category
  image_id                   = var.image_id
  instance_name              = var.instance_name
  vswitch_id                 = var.vswitch_id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  password 		     = var.instance_password

  user_data = "${data.template_file.user_data.template}"

}
