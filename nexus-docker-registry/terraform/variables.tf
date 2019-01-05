variable "credentials" {
  description = " file that contains your service account private key in JSON format"
}

variable "project" {
  description = "GCP project where resources will be created"
}

variable "region" {
  description = "location for your resources to be created in"
}

variable "zone" {
  description = "Availability zone"
}

variable "ssh_user" {
  description = "GCE SSH username"
}

variable "ssh_pub_key_file" {
  description = "SSH Public key path"
}

variable "image_name" {
  description = "Image to be used"
  default     = "nexus-v3-14-0-04"
}

variable "instance_type" {
  description = "Machine type"
  default     = "g1-small"
}
