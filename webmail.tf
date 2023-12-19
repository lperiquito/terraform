module "webmail" {
  source            = "./modules"
  vsphere_server    = var.vsphere_server
  vsphere_user      = var.vsphere_user
  vsphere_password  = var.vsphere_password
  vsphere_folder    = "services"
  vm_template_name  = "ubuntu22"

  interfaces = {
    "backup" = { # External network 
      portgroup   = "services DPG"
      ovf_mapping = "ens160"
    },

  }
  machine_name    = "webmail"
  disk_size       = 100
  memory          = 4096
  cpus            = 2
}
