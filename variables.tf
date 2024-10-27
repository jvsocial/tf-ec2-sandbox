# variables.tf
variable "aws_access_key" {
  description = "AWS access key for authentication"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS secret key for authentication"
  type        = string
}

variable "aws_token" {
  description = "Session token for temporary access"
  type        = string
  default     = null
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}



variable "instance_name" {
  description = "Name of EC2 instance"
  type        = string
  default     = "sandbox-server"

}

variable "security_group_name" {
  description = "Security Group Name"
  type        = string
  default     = "sandbox_sg"

}
