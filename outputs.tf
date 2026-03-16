output "instance_id" {
  description = "ID of the EC2 instance"
  value       = module.ec2_private_instance.instance_id
}

output "private_ip" {
  description = "Private IP of the EC2 instance"
  value       = module.ec2_private_instance.private_ip
}
