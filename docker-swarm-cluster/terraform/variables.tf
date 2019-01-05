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
  default     = "coreos-stable-1911-5-0-v20181219"
}

variable "swarm_managers" {
  description = "Number of Swarm managers"
  default     = 1
}

variable "swarm_managers_instance_type" {
  description = "Machine type"
  default     = "g1-small"
}

variable "swarm_workers" {
  description = "Number of Swarm workers"
  default     = 3
}

variable "swarm_workers_instance_type" {
  description = "Machine type"
  default     = "g1-small"
}
