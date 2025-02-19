provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = file("admin_gke.json")
}

module "network" {
  source          = "./modules/network"  
  project_id      = var.project_id       
  region          = var.region          
  vpc_name        = var.vpc_name     
  public_subnets  = var.public_subnets

}

module "load_balancing" {
  source               = "./modules/instance"
  depends_on = [module.network]

  instance_name        = var.lb_instance_name
  machine_type_instance = var.lb_machine_type_instance
  zone                 = var.lb_zone
  network              = module.network.vpc_name
  subnet               = module.network.public_subnet_names[0]
  internal_ip          = var.lb_internal_ip
  boot_disk_image      = var.lb_boot_disk_image
  boot_disk_size       = var.lb_boot_disk_size
  ssh_keys             = "${var.lb_user_name}:${file("./id_rsa.pub")}"

  user_name            = var.lb_user_name
  inventory_path       = var.inventory_path
  private_key_path     = var.private_key_path

  firewall_name        = var.lb_firewall_name
  allow_rules          = var.lb_allow_rules
  source_ranges        = var.lb_source_ranges

  create_additional_disk  = var.lb_create_additional_disk
}  

module "sonarqube_instance" {
  source               = "./modules/instance"
  depends_on = [module.network]

  instance_name         = var.sonarqube_instance_name
  machine_type_instance = var.sonarqube_machine_type_instance
  zone                  = var.sonarqube_zone
  network               = module.network.vpc_name
  subnet                = module.network.public_subnet_names[0]
  internal_ip           = var.sonarqube_internal_ip
  boot_disk_image       = var.sonarqube_boot_disk_image
  boot_disk_size        = var.sonarqube_boot_disk_size
  ssh_keys              = "${var.sonarqube_user_name}:${file("./id_rsa.pub")}"

  user_name            = var.sonarqube_user_name
  inventory_path       = var.inventory_path
  private_key_path     = var.private_key_path

  firewall_name        = var.sonarqube_firewall_name
  allow_rules          = var.sonarqube_allow_rules
  source_ranges        = var.sonarqube_source_ranges

  create_additional_disk  = var.sonarqube_create_additional_disk
  disk_type               = var.sonarqube_disk_type
  disk_size               = var.sonarqube_disk_size
}  

module "portainer_instance" {
  source               = "./modules/instance"
  depends_on = [module.network]

  instance_name         = var.portainer_instance_name
  machine_type_instance = var.portainer_machine_type_instance
  zone                  = var.portainer_zone
  network               = module.network.vpc_name
  subnet                = module.network.public_subnet_names[0]
  internal_ip           = var.portainer_internal_ip
  boot_disk_image       = var.portainer_boot_disk_image
  boot_disk_size        = var.portainer_boot_disk_size
  ssh_keys              = "${var.portainer_user_name}:${file("./id_rsa.pub")}"

  user_name             = var.portainer_user_name
  inventory_path        = var.inventory_path
  private_key_path      = var.private_key_path

  firewall_name         = var.portainer_firewall_name
  allow_rules           = var.portainer_allow_rules
  source_ranges         = var.portainer_source_ranges

  create_additional_disk  = var.portainer_create_additional_disk
  disk_type               = var.portainer_disk_type
  disk_size               = var.portainer_disk_size
}  

module "harbor_instance" {
  source               = "./modules/instance"
  depends_on = [module.network]

  instance_name        = var.harbor_instance_name
  machine_type_instance = var.harbor_machine_type_instance
  zone                 = var.harbor_zone
  network              = module.network.vpc_name
  subnet               = module.network.public_subnet_names[0]
  internal_ip          = var.harbor_internal_ip
  boot_disk_image      = var.harbor_boot_disk_image
  boot_disk_size       = var.harbor_boot_disk_size
  ssh_keys             = "${var.harbor_user_name}:${file("./id_rsa.pub")}"

  user_name            = var.harbor_user_name
  inventory_path       = var.inventory_path
  private_key_path     = var.private_key_path

  firewall_name        = var.harbor_firewall_name
  allow_rules          = var.harbor_allow_rules
  source_ranges        = var.harbor_source_ranges

  create_additional_disk  = var.harbor_create_additional_disk
  disk_type               = var.harbor_disk_type
  disk_size               = var.harbor_disk_size
}  


module "jenkins_instance" {
  source               = "./modules/instance"
  depends_on = [module.network]

  instance_name        = var.jenkins_instance_name
  machine_type_instance = var.jenkins_machine_type_instance
  zone                 = var.jenkins_zone
  network              = module.network.vpc_name
  subnet               = module.network.public_subnet_names[0]
  internal_ip          = var.jenkins_internal_ip
  boot_disk_image      = var.jenkins_boot_disk_image
  boot_disk_size       = var.jenkins_boot_disk_size
  ssh_keys             = "${var.jenkins_user_name}:${file("./id_rsa.pub")}"

  user_name            = var.jenkins_user_name
  inventory_path       = var.inventory_path
  private_key_path     = var.private_key_path

  firewall_name        = var.jenkins_firewall_name
  allow_rules          = var.jenkins_allow_rules
  source_ranges        = var.jenkins_source_ranges

  create_additional_disk  = var.jenkins_create_additional_disk
  disk_type               = var.jenkins_disk_type
  disk_size               = var.jenkins_disk_size
}  


module "deploy_instance" {
  source               = "./modules/instance"
  depends_on = [module.network]

  instance_name        = var.deploy_instance_name
  machine_type_instance = var.deploy_machine_type_instance
  zone                 = var.deploy_zone
  network              = module.network.vpc_name
  subnet               = module.network.public_subnet_names[0]
  internal_ip          = var.deploy_internal_ip
  boot_disk_image      = var.deploy_boot_disk_image
  boot_disk_size       = var.deploy_boot_disk_size
  ssh_keys             = "${var.deploy_user_name}:${file("./id_rsa.pub")}"

  user_name            = var.deploy_user_name
  inventory_path       = var.inventory_path
  private_key_path     = var.private_key_path

  firewall_name        = var.deploy_firewall_name
  allow_rules          = var.deploy_allow_rules
  source_ranges        = var.deploy_source_ranges

  create_additional_disk  = var.deploy_create_additional_disk
  disk_type               = var.deploy_disk_type
  disk_size               = var.deploy_disk_size
}  
