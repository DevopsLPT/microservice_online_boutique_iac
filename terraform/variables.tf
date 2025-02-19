variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
  default     = "online-boutique-449209"
}

variable "region" {
  description = "Google Cloud Region"
  type        = string
  default     = "asia-southeast1"
}

################################################################################
# Network Module - Variables 
################################################################################

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "gke-vpc" 
}

variable "public_subnets" {
  description = "List of public subnets with name and CIDR"
  type = list(object({
    name  = string
    cidr  = string
  }))
}

################################################################################
# Ansible - Variables 
################################################################################

variable "inventory_path" {
  description = "Inventory path"
  type        = string
}

variable "private_key_path" {
  description = "private key path"
  type        = string
}

################################################################################
# Load Balancing Instance Module - Variables 
################################################################################


variable "lb_instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "lb_machine_type_instance" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"

  validation {
    condition = contains(["e2-micro", "e2-small", "e2-medium", "n1-standard-1"], var.lb_machine_type_instance)
    error_message = "Invalid machine type. Allowed values: e2-micro, e2-small, e2-medium, n1-standard-1."
  }
}

variable "lb_zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "lb_internal_ip" {
  type        = string
  default     = null
}

variable "lb_boot_disk_image" {
  description = "The boot disk image"
  type        = string
}

variable "lb_boot_disk_size" {
  description = "The size of the boot disk"
  type        = number
  validation {
    condition     = var.lb_boot_disk_size >= 10
    error_message = "The boot disk size must be at least 10GB."
  }
}

variable "lb_user_name" {
  description = "The user name for SSH access"
  type        = string
}

# firewall

variable "lb_firewall_name" {
  description = "The name of the firewall"
  type        = string
}

variable "lb_allow_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))

  default = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
}

variable "lb_source_ranges" {
  type = list(string)

  validation {
    condition     = length(var.lb_source_ranges) > 0
    error_message = "At least one source range must be specified."
  }
}

# additional_disk

variable "lb_create_additional_disk" {
  description = "Flag to create and attach an additional disk to the instance"
  type        = bool
  default     = false  
}


################################################################################
# SonarQube Instance Module - Variables 
################################################################################

variable "sonarqube_instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "sonarqube_machine_type_instance" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"

  validation {
    condition = contains(["e2-micro", "e2-small", "e2-medium", "n1-standard-1"], var.sonarqube_machine_type_instance)
    error_message = "Invalid machine type. Allowed values: e2-micro, e2-small, e2-medium, n1-standard-1."
  }
}

variable "sonarqube_zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "sonarqube_internal_ip" {
  type        = string
  default     = null
}

variable "sonarqube_boot_disk_image" {
  description = "The boot disk image"
  type        = string
}

variable "sonarqube_boot_disk_size" {
  description = "The size of the boot disk"
  type        = number
  validation {
    condition     = var.sonarqube_boot_disk_size >= 10
    error_message = "The boot disk size must be at least 10GB."
  }
}

variable "sonarqube_user_name" {
  description = "The user name for SSH access"
  type        = string
}

# firewall

variable "sonarqube_firewall_name" {
  description = "The name of the firewall"
  type        = string
}

variable "sonarqube_allow_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))

  default = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
}

variable "sonarqube_source_ranges" {
  type = list(string)

  validation {
    condition     = length(var.sonarqube_source_ranges) > 0
    error_message = "At least one source range must be specified."
  }
}

# additional_disk

variable "sonarqube_create_additional_disk" {
  description = "Flag to create and attach an additional disk to the instance"
  type        = bool
  default     = false  
}

variable "sonarqube_disk_type" {
  type        = string
  description = "The additional_disk_type of the VM."
  default     = "pd-ssd"
}

variable "sonarqube_disk_size" {
  type        = number
  description = "The addtnl_disk_size of the VM."
  default     = 10
}
################################################################################
# Portainer Instance Module - Variables 
################################################################################

variable "portainer_instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "portainer_machine_type_instance" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"

  validation {
    condition = contains(["e2-micro", "e2-small", "e2-medium", "n1-standard-1"], var.portainer_machine_type_instance)
    error_message = "Invalid machine type. Allowed values: e2-micro, e2-small, e2-medium, n1-standard-1."
  }
}

variable "portainer_zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "portainer_internal_ip" {
  type        = string
  default     = null
}

variable "portainer_boot_disk_image" {
  description = "The boot disk image"
  type        = string
}

variable "portainer_boot_disk_size" {
  description = "The size of the boot disk"
  type        = number
  validation {
    condition     = var.portainer_boot_disk_size >= 10
    error_message = "The boot disk size must be at least 10GB."
  }
}

variable "portainer_user_name" {
  description = "The user name for SSH access"
  type        = string
}

# firewall

variable "portainer_firewall_name" {
  description = "The name of the firewall"
  type        = string
}

variable "portainer_allow_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))

  default = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
}

variable "portainer_source_ranges" {
  type = list(string)

  validation {
    condition     = length(var.portainer_source_ranges) > 0
    error_message = "At least one source range must be specified."
  }
}

# additional_disk

variable "portainer_create_additional_disk" {
  description = "Flag to create and attach an additional disk to the instance"
  type        = bool
  default     = false  
}

variable "portainer_disk_type" {
  type        = string
  description = "The additional_disk_type of the VM."
  default     = "pd-ssd"
}

variable "portainer_disk_size" {
  type        = number
  description = "The addtnl_disk_size of the VM."
  default     = 10
}

################################################################################
# Harbor Instance Module - Variables 
################################################################################

variable "harbor_instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "harbor_machine_type_instance" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"

  validation {
    condition = contains(["e2-micro", "e2-small", "e2-medium", "n1-standard-1"], var.harbor_machine_type_instance)
    error_message = "Invalid machine type. Allowed values: e2-micro, e2-small, e2-medium, n1-standard-1."
  }
}

variable "harbor_zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "harbor_internal_ip" {
  type        = string
  default     = null
}

variable "harbor_boot_disk_image" {
  description = "The boot disk image"
  type        = string
}

variable "harbor_boot_disk_size" {
  description = "The size of the boot disk"
  type        = number
  validation {
    condition     = var.harbor_boot_disk_size >= 10
    error_message = "The boot disk size must be at least 10GB."
  }
}

variable "harbor_user_name" {
  description = "The user name for SSH access"
  type        = string
}

# firewall

variable "harbor_firewall_name" {
  description = "The name of the firewall"
  type        = string
}

variable "harbor_allow_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))

  default = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
}

variable "harbor_source_ranges" {
  type = list(string)

  validation {
    condition     = length(var.harbor_source_ranges) > 0
    error_message = "At least one source range must be specified."
  }
}

# additional_disk

variable "harbor_create_additional_disk" {
  description = "Flag to create and attach an additional disk to the instance"
  type        = bool
  default     = false  
}

variable "harbor_disk_type" {
  type        = string
  description = "The additional_disk_type of the VM."
  default     = "pd-ssd"
}

variable "harbor_disk_size" {
  type        = number
  description = "The addtnl_disk_size of the VM."
  default     = 10
}

################################################################################
# Jenkins Instance Module - Variables 
################################################################################

variable "jenkins_instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "jenkins_machine_type_instance" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"

  validation {
    condition = contains(["e2-micro", "e2-small", "e2-medium", "n1-standard-1"], var.jenkins_machine_type_instance)
    error_message = "Invalid machine type. Allowed values: e2-micro, e2-small, e2-medium, n1-standard-1."
  }
}

variable "jenkins_zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "jenkins_internal_ip" {
  type        = string
  default     = null
}

variable "jenkins_boot_disk_image" {
  description = "The boot disk image"
  type        = string
}

variable "jenkins_boot_disk_size" {
  description = "The size of the boot disk"
  type        = number
  validation {
    condition     = var.jenkins_boot_disk_size >= 10
    error_message = "The boot disk size must be at least 10GB."
  }
}

variable "jenkins_user_name" {
  description = "The user name for SSH access"
  type        = string
}

# firewall

variable "jenkins_firewall_name" {
  description = "The name of the firewall"
  type        = string
}

variable "jenkins_allow_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))

  default = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
}

variable "jenkins_source_ranges" {
  type = list(string)

  validation {
    condition     = length(var.jenkins_source_ranges) > 0
    error_message = "At least one source range must be specified."
  }
}

# additional_disk

variable "jenkins_create_additional_disk" {
  description = "Flag to create and attach an additional disk to the instance"
  type        = bool
  default     = false  
}

variable "jenkins_disk_type" {
  type        = string
  description = "The additional_disk_type of the VM."
  default     = "pd-ssd"
}

variable "jenkins_disk_size" {
  type        = number
  description = "The addtnl_disk_size of the VM."
  default     = 10
}


################################################################################
# Deploy Instance Module - Variables 
################################################################################

variable "deploy_instance_name" {
  description = "The name of the instance"
  type        = string
}

variable "deploy_machine_type_instance" {
  description = "The machine type of the instance"
  type        = string
  default     = "e2-medium"

  validation {
    condition = contains(["e2-micro", "e2-small", "e2-medium", "n1-standard-1"], var.deploy_machine_type_instance)
    error_message = "Invalid machine type. Allowed values: e2-micro, e2-small, e2-medium, n1-standard-1."
  }
}

variable "deploy_zone" {
  description = "The zone where the instance will be created"
  type        = string
}

variable "deploy_internal_ip" {
  type        = string
  default     = null
}

variable "deploy_boot_disk_image" {
  description = "The boot disk image"
  type        = string
}

variable "deploy_boot_disk_size" {
  description = "The size of the boot disk"
  type        = number
  validation {
    condition     = var.deploy_boot_disk_size >= 10
    error_message = "The boot disk size must be at least 10GB."
  }
}

variable "deploy_user_name" {
  description = "The user name for SSH access"
  type        = string
}

# firewall

variable "deploy_firewall_name" {
  description = "The name of the firewall"
  type        = string
}

variable "deploy_allow_rules" {
  type = list(object({
    protocol = string
    ports    = list(string)
  }))

  default = [{
    protocol = "tcp"
    ports    = ["22"]
  }]
}

variable "deploy_source_ranges" {
  type = list(string)

  validation {
    condition     = length(var.deploy_source_ranges) > 0
    error_message = "At least one source range must be specified."
  }
}

# additional_disk

variable "deploy_create_additional_disk" {
  description = "Flag to create and attach an additional disk to the instance"
  type        = bool
  default     = false  
}

variable "deploy_disk_type" {
  type        = string
  description = "The additional_disk_type of the VM."
  default     = "pd-ssd"
}

variable "deploy_disk_size" {
  type        = number
  description = "The addtnl_disk_size of the VM."
  default     = 10
}
