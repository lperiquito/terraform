module "vpn222" {
  source            = "./modules"
  vsphere_server    = var.vsphere_server
  vsphere_user      = var.vsphere_user
  vsphere_password  = var.vsphere_password
  vsphere_folder    = "network"
  vm_template_name  = "ubuntu22"

  interfaces = {
    "external" = { # External DMZ network 
      portgroup   = "DMZ1 DPG"
      ovf_mapping = "ens160"
    },
    "internal" = { # Internal network
      ovf_mapping = "ens192"
      portgroup   = "SZ DPG"
    }

  }
  machine_name    = "vpn222"
  disk_size       = 30
  memory          = 2048
  cpus            = 2
}
