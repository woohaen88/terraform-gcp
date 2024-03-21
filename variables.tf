variable "os_image_ubuntu_2204" {
    type = string
    default = "projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20240208"
}

variable "project_id" {
    type = string
    default = "devops-417806"
}


variable "region" {
    type = string
    default = "asia-northeast3"
}

variable "zone" {
    type = string
    default = "asia-northeast3-b"
}

variable "gce_credentials" {
  type = string
  default = "keys/devops-417806-2dbb5aa9fdc0.json"
}

variable "gce_ssh_pub_key_file" {
  type = string
  default = "keys/gce_ssh_pub_key_file.pub"
}

variable "gce_ssh_user" {
  type = string
  default = "whoopii"
}

variable "gce_cluster_pub" {
  type = string
  default = "keys/gce_cluster.pub"
}


variable "network_tags" {
    type =  list(string)
    default = ["anywhere", "http-server", "https-server"]
}



