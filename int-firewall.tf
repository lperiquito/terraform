module "int-firewall" {
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
    "iot" = { # IOT network
      ovf_mapping = "ens192"
      portgroup   = "IOT DPG"
    },
    "internal" = { # Internal network
      ovf_mapping = "ens224"
      portgroup   = "Internal DPG"
    },
    "backup" = { # Backup network
      ovf_mapping = "ens256"
      portgroup   = "bck DPG"
    },
    "work" = { # Isolated network for work devices
      ovf_mapping = "ens288"
      portgroup   = "work DPG"
    }

  }
  machine_name    = "int-firewall"
  disk_size       = 30
  memory          = 2048
  cpus            = 2
}
