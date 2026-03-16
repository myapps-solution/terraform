output "instance_id" {
  value = module.ec2_private_instance.instance_id
}

output "private_ip" {
  value = module.ec2_private_instance.private_ip
}
