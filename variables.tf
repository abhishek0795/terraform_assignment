#-------------------
# VARIABLES FOR VPC|
#-------------------
variable "vpc_cidr" {
  description = "custom vpc"
}

variable "azs" {
  description = "availability zones for subnets"
  type        = list(string)

}

variable "private_subnet_cidr" {
  description = "private subnet cidr"
  type        = list(any)
}

variable "public_subnet_cidr" {
  description = "public subnet cidr"
  type        = list(any)
}

#-------------------------
# VARIABLES FOR INSTACNES|
#-------------------------
variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "instance type"

}

variable "key_name" {
  type        = string
  description = "key name"
  default     = "abhishekohiokey"

}

# webserver security group port
variable "sg_ports" {
  type    = list(string)
  default = ["80"]

}

variable "ssh_client" {
  type = string
}

#-------------------
# VARIABLES FOR ALB|
#-------------------
variable "alb_name" {
  description = "application load balancer name"
  type        = string
  default     = "abhishek-alb"
}
variable "target_group_name" {
  description = "application load balancer target group name"
  type        = string
  default     = "abhishek-tg"
}
#-------------------
# VARIABLES FOR RDS|
#-------------------
variable "rds_instance_name" {
  description = "rds instance name"
  type        = string
  default     = "abhishek-rds-instance"
}

variable "subnet_group_name" {
  description = "database subnet group name"
  type        = string
  default     = "abhishek-db-sg"
}

variable "security_group_name" {
  description = "database security group name"
  type        = string
  default     = "abhishek-rds-subnet-group"
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "test"
}
variable "db_username" {
  description = "Database username"
  type        = string
}
variable "db_password" {
  description = "Database password"
  type        = string
}