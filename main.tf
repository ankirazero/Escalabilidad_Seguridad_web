module "networking" {
  source      = "./resources/networking"
  environment = var.environment
}

module "security" {
  source      = "./resources/security"
  vpc_id      = module.networking.vpc_id
  environment = var.environment
}

module "storage" {
  source      = "./resources/storage"
  environment = var.environment
}

module "compute" {
  source            = "./resources/compute"
  subnet_id         = module.networking.subnet_public_id
  security_group_id = module.security.security_group_id
  instance_type     = var.instance_type
  environment       = var.environment
}