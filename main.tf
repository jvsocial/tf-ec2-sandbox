module "ec2_instance" {
  source              = "git::https://github.com/jvsocial/terraform-aws-free-tier-ec2.git"
  security_group_name = var.security_group_name
  instance_name       = var.instance_name
  user_data           = file("${path.module}/user_data.sh")


}
