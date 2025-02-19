project_id = "online-boutique-449209"

region = "asia-southeast1"

################################################################################
# Network Module - Variables 
################################################################################

vpc_name = "shoeshop-vpc" 

public_subnets =  [
    { name = "public-subnet-1", cidr = "10.0.1.0/24" },
  ]


################################################################################
# Ansible - Variables 
################################################################################

inventory_path = "../ansible/inventories/hosts.ini"

private_key_path = "~/.ssh/id_rsa"

################################################################################
# Load Balancing Instance Module - Variables 
################################################################################
lb_instance_name = "load-balancing"

lb_machine_type_instance = "e2-medium"

lb_zone = "asia-southeast1-b"

lb_internal_ip = "10.0.1.2"

lb_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-lts"  

lb_boot_disk_size = 50

lb_user_name = "root"

lb_firewall_name = "lb-firewall"

lb_allow_rules = [
  {
    protocol = "tcp"
    ports    = ["22"]
  },
  {
    protocol = "tcp"
    ports    = ["80"]
  },
  {
    protocol = "tcp"
    ports    = ["443"]
  },
]

lb_source_ranges = ["0.0.0.0/0"]

lb_create_additional_disk = false

################################################################################
# SonarQube Instance Module - Variables 
################################################################################

sonarqube_instance_name = "sonarqube-server"

sonarqube_machine_type_instance = "e2-medium"

sonarqube_zone = "asia-southeast1-b"

sonarqube_internal_ip = "10.0.1.3"

sonarqube_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-lts"  

sonarqube_boot_disk_size = 50

sonarqube_user_name = "root"

sonarqube_firewall_name = "sonarqube-firewall"

sonarqube_allow_rules = [
  {
    protocol = "tcp"
    ports    = ["22"]
  },
  {
    protocol = "tcp"
    ports    = ["9000"]
  },
  {
    protocol = "tcp"
    ports    = ["9001"]
  }
]

sonarqube_source_ranges = ["0.0.0.0/0"]

sonarqube_create_additional_disk = true

sonarqube_disk_type = "pd-standard"

sonarqube_disk_size = 10

################################################################################
# Portainer Instance Module - Variables 
################################################################################

portainer_instance_name = "portainer-server"

portainer_machine_type_instance = "e2-medium"

portainer_zone = "asia-southeast1-b"

portainer_internal_ip = "10.0.1.4"

portainer_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-lts"  

portainer_boot_disk_size = 50

portainer_user_name = "root"

portainer_firewall_name = "portainer-firewall"

portainer_allow_rules = [
  {
    protocol = "tcp"
    ports    = ["22"]
  },
  {
    protocol = "tcp"
    ports    = ["9000"]
  }
]

portainer_source_ranges = ["0.0.0.0/0"]

portainer_create_additional_disk = true

portainer_disk_type = "pd-standard"

portainer_disk_size = 10

################################################################################
# Harbor Instance Module - Variables 
################################################################################

harbor_instance_name = "harbor-server"

harbor_machine_type_instance = "e2-medium"

harbor_zone = "asia-southeast1-b"

harbor_internal_ip = "10.0.1.5"

harbor_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-lts"  

harbor_boot_disk_size = 50

harbor_user_name = "root"

harbor_firewall_name = "harbor-firewall"

harbor_allow_rules = [
  {
    protocol = "tcp"
    ports    = ["22"]
  },
  {
    protocol = "tcp"
    ports    = ["80"]
  },
    {
    protocol = "tcp"
    ports    = ["443"]
  },
  {
    protocol = "tcp"
    ports    = ["9001"]
  }
]

harbor_source_ranges = ["0.0.0.0/0"]

harbor_create_additional_disk = true

harbor_disk_type = "pd-standard"

harbor_disk_size = 10


################################################################################
# Jenkins Instance Module - Variables 
################################################################################

jenkins_instance_name = "jenkins-server"

jenkins_machine_type_instance = "e2-medium"

jenkins_zone = "asia-southeast1-b"

jenkins_internal_ip = "10.0.1.6"

jenkins_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-lts"  

jenkins_boot_disk_size = 50

jenkins_user_name = "root"

jenkins_firewall_name = "jenkins-firewall"

jenkins_allow_rules = [
  {
    protocol = "tcp"
    ports    = ["22"]
  },
  {
    protocol = "tcp"
    ports    = ["8080"]
  },
  {
    protocol = "tcp"
    ports    = ["9001"]
  }
]

jenkins_source_ranges = ["0.0.0.0/0"]

jenkins_create_additional_disk = true

jenkins_disk_type = "pd-standard"

jenkins_disk_size = 10


################################################################################
# Deploy Instance Module - Variables 
################################################################################

deploy_instance_name = "deploy-server"

deploy_machine_type_instance = "e2-medium"

deploy_zone = "asia-southeast1-b"

deploy_internal_ip = "10.0.1.7"

deploy_boot_disk_image = "ubuntu-os-cloud/ubuntu-2004-lts"  

deploy_boot_disk_size = 50

deploy_user_name = "root"

deploy_firewall_name = "deploy-firewall"

deploy_allow_rules = [
  {
    protocol = "tcp"
    ports    = ["22"]
  },
  {
    protocol = "tcp"
    ports    = ["443"]
  },
    {
    protocol = "tcp"
    ports    = ["80"]
  },
  {
    protocol = "tcp"
    ports    = ["9001"]
  }
]

deploy_source_ranges = ["0.0.0.0/0"]

deploy_create_additional_disk = true

deploy_disk_type = "pd-standard"

deploy_disk_size = 10

