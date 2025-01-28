# variables.tf

# AWS region to deploy resources
variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-west-2"
}

# EKS Version (Kubernetes version)
variable "eks_version" {
  description = "The Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.24"  # Set your desired version here, e.g., 1.24, 1.23, etc.
}

# VPC CIDR block
variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Subnet CIDR blocks
variable "public_subnet_a_cidr" {
  description = "CIDR block for public subnet A"
  type        = string
  default     = "10.0.4.0/24"
}

variable "public_subnet_b_cidr" {
  description = "CIDR block for public subnet B"
  type        = string
  default     = "10.0.5.0/24"
}

variable "private_subnet_a_cidr" {
  description = "CIDR block for private subnet A"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_b_cidr" {
  description = "CIDR block for private subnet B"
  type        = string
  default     = "10.0.2.0/24"
}

# Availability Zones for the public and private subnets
variable "availability_zone_a" {
  description = "Availability zone for subnet A"
  type        = string
  default     = "us-west-2a"
}

variable "availability_zone_b" {
  description = "Availability zone for subnet B"
  type        = string
  default     = "us-west-2b"
}

# Instance type for EKS Worker Nodes
variable "eks_instance_type" {
  description = "Instance type for EKS worker nodes"
  type        = string
  default     = "t3.medium"
}

# Key Pair for EC2 instances
variable "key_name" {
  description = "Key pair name for SSH access"
  type        = string
}

# AMI for the Bastion Host
variable "bastion_ami" {
  description = "AMI ID for the Bastion EC2 instance"
  type        = string
  default     = "ami-05134c8ef96964280"  # Ubuntu 20.04 AMI ID, update as needed
}

# Instance type for Bastion Host
variable "bastion_instance_type" {
  description = "Instance type for Bastion EC2 instance"
  type        = string
  default     = "t3.micro"
}

# EKS Node Group configuration
variable "node_group_size" {
  description = "Size of the EKS node group"
  type        = map(number)
  default     = {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
}
