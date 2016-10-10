  variable "atlas_token" {
    description = "Name of the Project for which the Infrastructure is about | (Example: GEMv2.GLM.app || HTTP || PROD)"
  }

##  Project's Information  ##

  variable "project_name" {
    description = "Name of the Project for which the Infrastructure is about | (Example: GEMv2.GLM.app || HTTP || PROD)"
  }

  variable "prj_ecosystem" {
    description = "Name of the Ecosystem, the Web Application is part of | [Valid Values: gemv1 / gemv2]"
  }

  variable "prj_application" {
    description = "Name of the Web Application | (Example: glm-app) | Alphanumeric characters, hyphens (-), and underscores (_) are allowed."
  }

  variable "prj_interface" {
    description = "Which interface will the Web Application be used through | [Valid Values: http / cli]"
  }

  variable "prj_environment" {
    description = "On which Environment will the Web Application be launched | [Valid Values: prod | beta | stg]"
  }


##  Enable/Disable AWS Services  ##

  # AWS RDS - MariaDB Cluster
  variable "aws_rds_cluster_mariadb_enabled" {
    default = 0
  }

  # AWS ElasticSearch Cluster
  variable "aws_elasticsearch_cluster_enabled" {
    default = 0
  }

  # AWS ElastiCache - Redis Cluster
  variable "aws_elasticache_cluster_redis_enabled" {
    default = 0
  }

  # AWS ElastiCache - Memcached Cluster
  variable "aws_elasticache_cluster_memcached_enabled" {
    default = 0
  }

  
##  AWS Account Information  ##

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

  
##  EC2 | Instances Parameters  ##

  variable "ec2_instance_type" {
    description = "The type of the EC2 Instances"
  }


##  EC2 | Network & Security Parameters  ##

  variable "ssh_keypair_public" {
    description = "SSH Public Key that will be used to access the EC2 Instances (Example: ssh-rsa AAABBBCCC999... email@example.com)"
  }


##  EC2 | Auto Scaling Parameters  ##

  variable "asg_min_instances" {
    description = "The minimum number of Instances available on any given point of time"
  }
  
  variable "asg_max_instances" {
    description = "The maximum number of Instances available on any given point of time"
  }
  
  variable "asg_des_instances" {
    description = "The desire number of Instances available on any given point of time"
  }


variable "ec2_instance-root_volume_size" {
  description = "Size (in GB) of the Root Volume for the EC2 Instances"
  default = 10
}


variable "project_db_name" {
    description = "Name of the Project's main Database that will be created on the RDS Instance"
}

variable "project_db_admin_username" {
    description = "Username of the RDS Instance Administrator"
}

variable "project_db_admin_password" {
    description = "Password of the RDS Instance Administrator"
}

