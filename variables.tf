variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for private instance"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}
