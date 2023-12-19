variable "vsphere_server" {
  description = "The name of our vsphere server"
}

variable "vsphere_user" {
  description = "The user name for vSphere API user"
}

variable "vsphere_password" {
  description = "The password for vSphere API user"
}

variable "vm_template_name" {
  description = "The VM template name to use"
  default     = "ubuntu22"
}

variable "datastore_name" {
  description = "Name of datastore"
  default     = "p3700_2t"
}

variable "interfaces" {
	type = map(object({
		portgroup = string
		ovf_mapping = string
	}))
  default = {}
}
