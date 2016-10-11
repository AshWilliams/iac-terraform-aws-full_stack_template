############################
##  Predefined Variables  ##
############################

##  Project's Information  ##

  # Name of the Project
  # Example:      GEMv2.GLM.app || HTTP || PROD
  project_name    = "GEMv2.DeDupe.app |HTTP|PROD"
  
  # Name of the Ecosystem
  # Valid Values: gemv1 / gemv2
  prj_ecosystem   = "gemv2"
  
  # Name of the Web Application
  # Example:      glm-app
  # Restrictions: Alphanumeric characters, hyphens (-), and underscores (_) are allowed.
  prj_application = "dedupe"
  
  # Interface
  # Valid Values: http / cli
  prj_interface   = "http"
  
  # Environment
  # Valid Values: prod / beta / stg
  prj_environment = "stg"


##  Route 53  ##

  # Create a Public Domain (Zone)?
  # IF YES set Value  = 0
  aws_r53_zone_pub"   = 0
  
    # Name of the Public Domain (Zone)
    aws_r53_zone_pub_name = "domain.tld"

    # A Comment for the Public Domain (Zone)
    aws_r53_zone_pub_comment = "This is just a placeholder.."
  
  # Create a Private Domain (Zone)?
  # IF YES set Value  = 1
  aws_r53_zone_prv    = 1
  
    # Name of the Private Domain (Zone)
    aws_r53_zone_prv_name = "gemv2-dedupe.app"

    # A Comment for the Domain (Zone)
    aws_r53_zone_prv_comment = "EcoSystem: GEMv2 | WebApplicationP DeDupe"


##  Enable/Disable AWS Services  ##
# To enable a service set value to  (1)
# To disable a service set value to (0)

  # AWS RDS - MariaDB Cluster
  aws_rds_cluster_mariadb_enabled             = "0"

  # AWS ElasticSearch Cluster
  aws_elasticsearch_cluster_enabled           = "1"

  # AWS ElastiCache - Redis Cluster
  aws_elasticache_cluster_redis_enabled       = "1"

  # AWS ElastiCache - Memcached Cluster
  aws_elasticache_cluster_memcached_enabled   = "0"


##  EC2 | Instances Parameters  ##

  # EC2 Instance Type
  ec2_instance_type = "t2.micro"


##  EC2 | Network & Security Parameters  ##

  # SSH Public Key for accessing EC2 Instances
  # (Example: ssh-rsa AAABBBCCC999... email@example.com)
  ssh_keypair_public = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2zbh0X0ooZlRugAQrQC350ZW7JkZ6A6jJp5BM3BIx4RyK5i1Lm2Cgg8lW7AgnqyqzSym+s1F0hzuw1NuFGD8FLuTyOFzEkLDIxbk7A6M5GTpEZZC3cXrwC1Hw3WKU9aUjSw1kC1wDvWveVHuy11mSKae9GcsarbNF6WcSrGPukibobJ0f2MKZiXZU0ZVla0s7IUlMZvN9X9x6JiT3UiqKlanAh+F31AbNNk6E8GtAiEakVUBOqRE9EEjzyKZu5Jd3zQRn1ghOu2Lo3ksSBV3WswFtOgg6JdaBG5+4engdsttmD16EKfDKZG2zW1DZaKNSJJV5NL1ZWOE7N5cBFhCX gfisaris@bridgemanimages.com"
  

##  EC2 | Auto Scaling Parameters  ##

  # Group Minimum Size
  # The minimum number of Instances available on any given point of time
  asg_min_instances   = "3"
  
  # Group Maximum Size
  # The maximum number of Instances available on any given point of time
  asg_max_instances   = "9"
  
  # Group Desired Size
  # The desire number of Instances available on any given point of time
  asg_des_instances   = "3"



#####  Others  #####

  ec2_instance-root_volume_size = "10"
  # Size (in GB) of the Root Volume for the EC2 Instances

  project_db_name = "db-name"
  # Name of the Project's main Database that will be created on the RDS Instance
  
  project_db_admin_username = "db-admin"
  # Username of the RDS Instance Administrator

  project_db_admin_password = "db-admin-pass"
  # Password of the RDS Instance Administrator
