module "ext-firewall" {
  source            = "./modules"
  vsphere_server    = var.vsphere_server
  vsphere_user      = var.vsphere_user
  vsphere_password  = var.vsphere_password
  vsphere_folder    = "network"
  vm_template_name  = "firewall"

  interfaces = {
    "external" = { # Internet
      portgroup   = "WAN DPG"
      ovf_mapping = "ens160"
    },
    "dmz1" = { # DMZ1 network
      ovf_mapping = "ens192"
      portgroup   = "DMZ1 DPG"
    },
    "dmz2" = { # DMZ2 network
      ovf_mapping = "ens224"
      portgroup   = "DMZ2 DPG"
    },

  }
  machine_name    = "firewall"
  disk_size       = 30
  memory          = 2048
  cpus            = 2
}
