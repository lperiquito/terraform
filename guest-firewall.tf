module "guest-firewall" {
  source            = "./modules"
  vsphere_server    = var.vsphere_server
  vsphere_user      = var.vsphere_user
  vsphere_password  = var.vsphere_password
  vsphere_folder    = "network"
  vm_template_name  = "firewall"

  interfaces = {
    "external" = { # Internal network
      portgroup   = "SZ DPG"
      ovf_mapping = "ens160"
    },
    "internal" = { # Guest network
      ovf_mapping = "ens192"
      portgroup   = "GUEST DPG"
    }

  }
  machine_name    = "guest-firewall"
  disk_size       = 30
  memory          = 2048
  cpus            = 2
}
