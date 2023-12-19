variable "vsphere_server" {
  description = "The name of our vsphere server"
  default = "vcsa.periquito.pt"
}

variable "vsphere_user" {
  description = "The user name for vSphere API user"
}

variable "vsphere_password" {
  description = "The password for vSphere API user"
}

variable "compute_cluster" {
  description = "Name of compute cluster"
  default = "Home"
}

variable "datastore_cluster" {
  description = "Name of datastore cluster"
  default = "Home"
}

variable "datastore_name" {
  description = "Name of datastore"
  default = "p3700_2t"
}

variable "datacenter_name" {
  description = "Name of Datacentre"
  default = "Home"
}

variable "vm_template_name" {
  description = "The VM template name to use"
}

variable "vsphere_folder" {
  description = "Folder to put the VSphere VM"
}

variable "machine_name" {
  description = "Name of the VM to create"
}

variable "cpus" {
  description = "Number of CPUs to assign to VM"
  default     = 1
}

variable "memory" {
  description = "Amount of memory to assign to VM"
  default     = 1024
}

variable "disk_size" {
  description = "Size of the disk in GB"
  default     = 10
}

variable "interfaces" {
	type = map(object({
		portgroup = string
		ovf_mapping = string
	}))
}
