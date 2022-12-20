variable "proxmox" {
    type = map
    default = {
        "pm_api_url" = "https://192.168.2.99:8006/api2/json"
        "pm_password" = "soeid1"
        "pm_user" = "root@pam"
    }
}

variable "clone-image" {
    type = string
    default = "alpine"
  
}

variable "agent-count" {
   default = 1
}

variable "node-id-prefix" {
  default = 40
}

variable "target_node" {
  default = "homelab"
}

variable "vm-name" {
    default = "agent"
  
}
variable "hostnames" {
  description = "VMs to be created"
  type        = list(string)
  default     = ["k3sagent-1","k3sagent-2","k3sagent-3"]
}
variable "ips2" {
    description = "IPs of the VMs, respective to the hostname order"
    type        = list(string)
	default     = ["172.16.0.100","172.16.0.101"]
}
variable "ips" {
    description = "IPs of the VMs, respective to the hostname order"
    type        = list(string)
	default     = ["192.168.2.140","192.168.2.141","192.168.2.151"]
}
variable "ssh_keys" {
	type = map
     default = {
       pub  = "~/.ssh/id_rsa.pub"
       priv = "~/.ssh/id_rsa"
     }
}
variable "user" {
	default     = "root"
	description = "User used to SSH into the machine and provision it"
}

#variable "ssh_password" {}
