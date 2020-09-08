#
# Provider
#
variable "access_key" {
  description = "Configure the alicloud access_key."
  type        = string
  default     = ""
}

variable "secret_key" {
  description = "Configure the alicloud access_key."
  type        = string
  default     = ""
}

variable "region" {
  description = "The region used to launch this module resources."
  type        = string
  default     = "cn-shanghai"
}

#
# ECS instance
#

variable "availability_zone" {
  description = "The system availablity zone."
  type        = string
  default     = "cn-shanghai-g"
}

variable "security_groups" {
  description = "A list of security group to associate with ECS and Jenkins Instance."
  type        = list(string)
  default     = ["sg-uf69s14yq86u51z8set2"]
}

variable "instance_type" {
  description = "The instance type used to launch instance."
  type        = string
  default     = "ecs.s6-c1m1.small"
}

variable "system_disk_category" {
  description = "The system disk category used to launch one instance."
  type        = string
  default     = "cloud_efficiency"
}

variable "image_id" {
  description = "The image id used to launch one instance. It only support CentOS_7."
  type        = string
  default     = "centos_7_04_64_20G_alibase_201701015.vhd"
}

variable "instance_name" {
  description = "The name of instance."
  type        = string
  default     = "Jenkins"
}

variable "vswitch_id" {
  description = "The virtual switch ID to launch ECS and Jenkins instance in VPC."
  type        = string
  default     = "vsw-uf63blj1ngp95g2x90w78"
}

variable "internet_max_bandwidth_out" {
  description = "The maximum internet out bandwidth of instance."
  type        = number
  default     = 2
}


variable "instance_password" {
  description = "Configure instance password."
  type        = string
  default     = ""
}
