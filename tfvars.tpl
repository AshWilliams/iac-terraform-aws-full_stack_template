###################################
##  Static Variables - Template  ##
###################################

##  Project's Information  ##

  project_name = "gsite"
  # Name of the Project for which the Infrastructure is about | (Example: GEMv2.GLM.app || HTTP || PROD)

  prj_ecosystem = "geco"
  # Name of the Ecosystem, the Web Application is part of | [Valid Values: gemv1 / gemv2]

  prj_application = "gapp"
  # Name of the Web Application | (Example: glm-app) | Alphanumeric characters, hyphens (-), and underscores (_) are allowed.

  prj_interface = "giface"
  # Which interface will the Web Application be used through | [Valid Values: http / cli]

  prj_environment = "genv"
  # On which Environment will the Web Application be launched | [Valid Values: prod | beta | stg]


##  Enable/Disable AWS Services  ##

  # AWS RDS - MariaDB Cluster
  aws_rds_cluster_mariadb_enabled = "0"

  # AWS ElasticSearch Cluster
  aws_elasticsearch_cluster_enabled = "0"

  # AWS ElastiCache - Redis Cluster
  aws_elasticache_cluster_redis_enabled = "0"

  # AWS ElastiCache - Memcached Cluster
  aws_elasticache_cluster_memcached_enabled = "0"
 
##  EC2 | Instances Parameters  ##

  ec2_instance_type = "t2.micro"
  # The type of the EC2 Instances

##  EC2 | Network & Security Parameters  ##

  ssh_keypair_public = ""
  # SSH Public Key that will be used to access the EC2 Instances (Example: ssh-rsa AAABBBCCC999... email@example.com)

##  EC2 | Auto Scaling Parameters  ##

  asg_min_instances = "3"
  # The minimum number of Instances available on any given point of time
  
  asg_max_instances = "9"
  # The maximum number of Instances available on any given point of time
  
  asg_des_instances = "3"
  # The desire number of Instances available on any given point of time


## Others ##

  ec2_instance-root_volume_size = "10"
  # Size (in GB) of the Root Volume for the EC2 Instances

  project_db_name = "g-db-name"
  # Name of the Project's main Database that will be created on the RDS Instance
  
  project_db_admin_username = "g-db-admin"
  # Username of the RDS Instance Administrator

  project_db_admin_password = ""
  # Password of the RDS Instance Administrator
