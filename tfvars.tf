############################
##  Predefined Variables  ##
############################

##  Project's Information  ##

  # Name of the Project
  # Example:      GEMv2.Zip.ms || CLi || STG
  project_name    = "GEMv2.Zip.ms || CLi || STG"
  
  # Name of the Ecosystem
  # Valid Values: gemv1 / gemv2
  prj_ecosystem   = "gemv2"
  
  # Name of the Web Application
  # Example:      glm-app
  # Restrictions: Alphanumeric characters, hyphens (-), and underscores (_) are allowed.
  prj_application = "zip_ms"
  
  # Interface
  # Valid Values: http / cli
  prj_interface   = "cli"
  
  # Environment
  # Valid Values: prod / beta / stg
  prj_environment = "stg"


##  GitHub Repo  ##

  # URL of GitHub Repository
  # Example: https://github.com/bridgemanart/application.git
  project_gitrepo_url = "https://github.com/bridgemanart/GemV2ServiceZip.git"
  
  # Branch Name of GitHub Repository
  # Example: master
  project_gitrepo_branch = "master"


##  Route 53  ##

  # Create a Public Domain (Zone)?
  # IF YES set Value  = 1
  aws_r53_zone_pub"   = 0
  
    # Name of the Public Domain (Zone)
    aws_r53_zone_pub_name = "domain.tld"

    # A Comment for the Public Domain (Zone)
    aws_r53_zone_pub_comment = "This is just a placeholder.."
  
  # Create a Private Domain (Zone)?
  # IF YES set Value  = 1
  aws_r53_zone_prv    = 1
  
    # Name of the Private Domain (Zone)
    aws_r53_zone_prv_name = "stg-cli-zip.ms"

    # A Comment for the Domain (Zone)
    aws_r53_zone_prv_comment = "GEMv2.Zip.ms || CLi || STG"


##  Enable/Disable AWS Services  ##
# To enable a service set value to  (1)
# To disable a service set value to (0)

  # AWS EFS Cluster
  aws_efs_cluster_enabled                     = "1"

  # AWS RDS - MariaDB Cluster
  aws_rds_cluster_mariadb_enabled             = "1"

  # AWS ElasticSearch Cluster
  aws_elasticsearch_cluster_enabled           = "0"

  # AWS ElastiCache - Redis Cluster
  aws_elasticache_cluster_redis_enabled       = "1"

  # AWS ElastiCache - Memcached Cluster
  aws_elasticache_cluster_memcached_enabled   = "0"


##  CloudFormation Parameters  ##

  ## CodeDeploy Application Revision
  
    # GitHub Repository
    clf_codedeploy_apprev_gitrepo = "gfisaris/aws-codedeploy-app-revision"
    
    # GitHub Repository Commit ID
    clf_codedeploy_apprev_commitid = "cb9816113242c854486133626056ccc675079fae"


##  VPC | Virtual Private Cloud  ##

  ## Public VPC
  
    # Enable/Create a Public VPC
    aws_vpc_pub_enabled = "0"
    
    # Public VPC CIDR Block
    #aws_vpc_pub_cidr_block = "192.168.0.0/22"
    
    # Public VPC Number of Subnets
    aws_vpc_pub_subnets_count = "0"
    
    # Public VPC Subnets CIDR Blocks
    aws_vpc_subnet_pub_cidr_block = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
    
    # Public VPC - Enable DNS Support
    #aws_vpc_pub_enable_dns_support = "true"
    
    # Public VPC - Enable DNS Hostnames
    #aws_vpc_pub_enable_dns_hostnames = "true"
    
    # Public VPC - Enable ClassicLink
    #aws_vpc_pub_enable_classiclink = "false"
    
  ## Private VPC
  
    # Enable/Create a Public VPC
    aws_vpc_prv_enabled = "1"
    
    # Private VPC CIDR Block
    aws_vpc_prv_cidr_block = "10.0.0.0/20"
    
    # Private VPC Number of Subnets
    aws_vpc_prv_subnets_count = "3"
    
    # Private VPC Subnets CIDR Blocks
    aws_vpc_subnet_prv_cidr_block = ["10.0.1.0/22", "10.0.4.0/22", "10.0.7.0/22"]
    
    # Private VPC - Enable DNS Support
    aws_vpc_prv_enable_dns_support = "true"
    
    # Private VPC - Enable DNS Hostnames
    aws_vpc_prv_enable_dns_hostnames = "true"
    
    # Private VPC - Enable ClassicLink
    aws_vpc_prv_enable_classiclink = "false"
    

##  EC2 | Instances Parameters  ##

  # EC2 Instance Type
  ec2_instance_type = "t2.micro"


##  EC2 | Network & Security Parameters  ##

  # SSH Public Key for accessing EC2 Instances
  # (Example: ssh-rsa AAABBBCCC999... email@example.com)
  ssh_keypair_public = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDe/1x12GcecpMI9dMiYW3fnBbvhiu2pLBVnLKcSibUC7GPdLJj18icE08eaHNecpCmCwvhleHbS6EPPIMXIpLWLs1kBgxMQGWUuXLJaSHHJbrC3nB5t5X51Pi6sTCPHy/KboX5tssdmhVmI2j3E9bUXZScKuW4rybW07hyfaiL8vD9q1vxWzl77QR2xfQtXOoKUWVyqbmDZF9ec6Pd3mV0rpMkozV++2FnRt2OKvsBD83IYBRbPHsCZRDenNMkDcGn3IXAEiGTLaspdCMSyF3V0cVDipiVZ0QyhYRtKoGObKu8enq3LNzN5px/buvpJP8hBJ7/pjsLUPPSXMto8tcx TerraFormSSHstg"
  

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

  project_db_name = "zip_ms"
  # Name of the Project's main Database that will be created on the RDS Instance
  
  project_db_admin_username = "dbadmin"
  # Username of the RDS Instance Administrator

  project_db_admin_password = "dbadmin"
  # Password of the RDS Instance Administrator
