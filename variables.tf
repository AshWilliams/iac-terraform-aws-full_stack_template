variable "aws_access_key" {
    decscription = "AWS Access Key"
}

variable "aws_secret_key" {
    description = "AWS Secret Key"
}

variable "aws_region" {
    description = "Which AWS Region will be used ?"
    default = "eu-west-1"
}


variable "ec2_keypair_public" {
    description = "SSH Public Key that will be used to access the EC2 Instances (Example: ssh-rsa AAABBBCCC999... email@example.com)"
}


variable "project_name" {
    description = "Name of the Project for which the Infrastructure is about | (Example: GEMv2.GLM.app || HTTP || PROD)"
}

variable "project_webapplication" {
    description = "Name of the Web Application | (Example: glm.app)"
}

variable "project_ecosystem" {
    description = "Name of the Ecosystem, the Web Application is part of | [Options: gemv1 / gemv2]"
}

variable "project_interface" {
    description = "Which interface will the Web Application be used through | [Options: http / cli]"
}

variable "project_environment" {
    description = "On which Environment will the Web Application be launched | [Options: prod | beta | stg]"
}

variable "prj-ec2_asg_minsize" {
    description = "The minimum number of Instances available on any given point of time"
}

variable "prj-ec2_asg_maxsize" {
    description = "The maximum number of Instances available on any given point of time"
}

variable "prj-ec2_asg_desirecap" {
    description = "The desire number of Instances available on any given point of time"
}

variable "ec2_instance-root_volume_size" {
  description = "Size (in GB) of the Root Volume for the EC2 Instances"
  default = 10
}