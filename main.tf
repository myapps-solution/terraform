module "ec2_private_instance" {
  source        = "./modules/ec2_private_instance"
  instance_type = var.instance_type
  ami_id        = var.ami_id
  subnet_id     = var.subnet_id
  key_name      = var.key_name
}
