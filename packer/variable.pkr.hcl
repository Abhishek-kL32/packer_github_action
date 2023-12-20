variable "ami_id" {

  type        = string
  description = "default ami will be Amazon Linux"
  default     = "ami-02e94b011299ef128"
}

variable "project_name" {

  type        = string
  description = "Name of Project"
  default     = "Shopping"
}

variable "project_env" {

  type        = string
  description = "Project Environment"
  default     = "production"
}

variable "region" {

  type        = string
  description = "Project Environment"
  default     = "ap-south-1"
}

variable "instance_type" {

  type        = string
  description = "Free tyre instance type"
  default     = "t2.micro"
}

locals {
   timestamp    = "${formatdate("DD-MM-YYYY-hh-mm", timestamp())}"
   image_name   = "${var.project_name}-${var.project_env}-${local.timestamp}"
 }
 
