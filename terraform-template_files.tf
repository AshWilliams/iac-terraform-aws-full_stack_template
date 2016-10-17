resource "template_file" "node_userdata" {
  template  = "${file("terraform-template_file-ec2-instance-userdata.txt")}"
  vars {
    iamAccessKey  = "${var.aws_access_key}"
    iamSecretKey  = "${var.aws_secret_key}"
    activeRegion  = "${var.aws_region}"
  }
}

resource "template_file" "app-iam_user_crd" {
  template = "${file("files-appuser_iam_crd")}"
  vars {
    iamAccKey = "${aws_iam_access_key.master.id}"
    iamSecKey = "${aws_iam_access_key.master.secret}"
  }
}

resource "template_file" "app-github_repo" {
  template = "${file("files-github_repo")}"
  vars {
    github_username     = "${var.project_gitrepo_uname}"
    github_password     = "${var.project_gitrepo_upass}"
    github_repo_url     = "${var.project_gitrepo_url}"
    github_repo_branch  = "${var.project_gitrepo_branch}"
  }
}

## Application vHost Configuration Files

  resource "template_file" "vhost-nginx_conf" {
    template = "${file("tplfile-vhost-nginx_conf")}"
    vars {
      app_eco = "${var.prj_ecosystem}"
      app_name = "${var.prj_application}"
    }
  }

  resource "template_file" "vhost-phpfpm_conf" {
    template = "${file("tplfile-vhost-phpfpm_conf")}"
    vars {
      app_eco = "${var.prj_ecosystem}"
      app_name = "${var.prj_application}"
    }
  }

  resource "template_file" "vhost-newrelic_conf" {
    template = "${file("tplfile-vhost-newrelic_conf")}"
    vars {
      project_name = "${var.project_name}"
    }
  }

## Cloudwatch Logs Monitoring Configuration Files

  resource "template_file" "cloudwatch-allInstances_app_logs_conf" {
    template = "${file("tplfile-cloudwatch-allInstances_app_logs_conf")}"
    vars {
      app_eco   = "${var.prj_ecosystem}"
      app_name  = "${var.prj_application}"
      app_env   = "${var.prj_environment}"
    }
  }

  resource "template_file" "cloudwatch-allInstances_gqm_qc_daemons_logs_conf" {
    template = "${file("tplfile-cloudwatch-allInstances_gqm_qc_daemons_logs_conf")}"
    vars {
      app_eco   = "${var.prj_ecosystem}"
      app_name  = "${var.prj_application}"
      app_env   = "${var.prj_environment}"
    }
  }

  resource "template_file" "cloudwatch-allInstances_services_logs_conf" {
    template = "${file("tplfile-cloudwatch-allInstances_services_logs_conf")}"
    vars {
      app_eco   = "${var.prj_ecosystem}"
      app_name  = "${var.prj_application}"
      app_env   = "${var.prj_environment}"
    }
  }

  resource "template_file" "cloudwatch-allInstances_vhost_logs_conf" {
    template = "${file("tplfile-cloudwatch-allInstances_vhost_logs_conf")}"
    vars {
      app_eco   = "${var.prj_ecosystem}"
      app_name  = "${var.prj_application}"
      app_env   = "${var.prj_environment}"
    }
  }
