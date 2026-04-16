
module "Networking_Terraform"{
    source          = "./resources/networking"
    rg_name         = var.rg_name
    location        = var.location
    vnet_name       = var.vnet_name 
    subnet_back     = var.subnet_back
    subnet_front    = var.subnet_front
    subnet_sa       = var.subnet_sa
    vnet_range      = var.vnet_range 

}