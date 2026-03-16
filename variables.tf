variable "ami_id" {
  description = "AMI ID for EC2"
}

variable "subnet_id" {
  description = "Subnet ID for private instance"
}

variable "key_name" {
  description = "SSH key pair name"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}
