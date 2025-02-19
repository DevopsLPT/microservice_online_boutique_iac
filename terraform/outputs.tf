################################################################################
# VPC Module - Output 
################################################################################

output "vpc_name" {
  description = "The name of the created VPC"
  value       = module.network.vpc_name
}

output "public_subnet_names" {
  description = "The name of the created Subnet"
  value       = module.network.public_subnet_names
}

output "public_subnet_cidrs" {
  description = "The CIDR range of the created Subnet"
  value       = module.network.public_subnet_cidrs
}


################################################################################
# Load Balancing Instance Module - Variables 
################################################################################
output "load_balancing_ip" {
  description = "The public IP of the instance"
  value       = module.load_balancing.instance_ip
}

output "load_balancing_internal_ip" {
  description = "The internal IP of the instance"
  value       = module.load_balancing.internal_ip
}


output "load_balancing_persistent_disk_name" {
  value = module.load_balancing.disk_name
  description = "The name of the persistent disk."
}

################################################################################
# SonarQube Instance Module - Output 
################################################################################

output "sonarqube_instance_ip" {
  description = "The public IP of the instance"
  value       = module.sonarqube_instance.instance_ip
}

output "sonarqube_internal_ip" {
  description = "The internal IP of the instance"
  value       = module.sonarqube_instance.internal_ip
}

output "sonarqube_persistent_disk_name" {
  value = module.sonarqube_instance.disk_name
  description = "The name of the persistent disk."
}

output "sonarqube_disk_self_link" {
  value = module.sonarqube_instance.disk_self_link
  description = "The self link of the persistent disk."
}
################################################################################
# Portainer Instance Module - Output 
################################################################################

output "portainer_instance_ip" {
  description = "The public IP of the instance"
  value       = module.portainer_instance.instance_ip
}

output "portainer_internal_ip" {
  description = "The internal IP of the instance"
  value       = module.portainer_instance.internal_ip
}

output "portainer_persistent_disk_name" {
  value = module.portainer_instance.disk_name
  description = "The name of the persistent disk."
}

output "portainer_disk_self_link" {
  value = module.portainer_instance.disk_self_link
  description = "The self link of the persistent disk."
}

################################################################################
# Harbor Instance Module - Output 
################################################################################

output "harbor_instance_ip" {
  description = "The public IP of the instance"
  value       = module.harbor_instance.instance_ip
}


output "harbor_internal_ip" {
  description = "The internal IP of the instance"
  value       = module.harbor_instance.internal_ip
}

output "harbor_persistent_disk_name" {
  value = module.harbor_instance.disk_name
  description = "The name of the persistent disk."
}

output "harbor_disk_self_link" {
  value = module.harbor_instance.disk_self_link
  description = "The self link of the persistent disk."
}

################################################################################
# Jenkins Instance Module - Output 
################################################################################

output "jenkins_instance_ip" {
  description = "The public IP of the instance"
  value       = module.jenkins_instance.instance_ip
}

output "jenkins_internal_ip" {
  description = "The internal IP of the instance"
  value       = module.jenkins_instance.internal_ip
}

output "jenkins_persistent_disk_name" {
  value = module.jenkins_instance.disk_name
  description = "The name of the persistent disk."
}

output "jenkins_disk_self_link" {
  value = module.jenkins_instance.disk_self_link
  description = "The self link of the persistent disk."
}

################################################################################
# Deploy Instance Module - Output 
################################################################################

output "deploy_instance_ip" {
  description = "The public IP of the instance"
  value       = module.deploy_instance.instance_ip
}

output "deploy_internal_ip" {
  description = "The internal IP of the instance"
  value       = module.deploy_instance.internal_ip
}

output "deploy_persistent_disk_name" {
  value = module.deploy_instance.disk_name
  description = "The name of the persistent disk."
}

output "deploy_disk_self_link" {
  value = module.deploy_instance.disk_self_link
  description = "The self link of the persistent disk."
}
