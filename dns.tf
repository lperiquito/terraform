module "dns" {
  source            = "./modules"
  vsphere_server    = var.vsphere_server
  vsphere_user      = var.vsphere_user
  vsphere_password  = var.vsphere_password
  vsphere_folder    = "services"
  vm_template_name  = "ubuntu22"

  interfaces = {
    "backup" = { # External network 
      portgroup   = "DMZ2 DPG"
      ovf_mapping = "ens160"
    },

  }
  machine_name    = "dns"
  disk_size       = 20
  memory          = 1024
  cpus            = 1
}
