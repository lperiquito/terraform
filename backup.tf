module "backup" {
  source            = "./modules"
  vsphere_server    = var.vsphere_server
  vsphere_user      = var.vsphere_user
  vsphere_password  = var.vsphere_password
  vsphere_folder    = "services"
  vm_template_name  = "ubuntu22"

  interfaces = {
    "backup" = { # External network 
      portgroup   = "bck DPG"
      ovf_mapping = "ens160"
    },

  }
  machine_name    = "backup"
  disk_size       = 900
  memory          = 8192
  cpus            = 4
}
