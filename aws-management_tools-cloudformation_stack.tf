resource "aws_cloudformation_stack" "codedeploy-app-revision-github" {
  depends_on = ["aws_codedeploy_app.webapp", "aws_autoscaling_group.asg", "aws_autoscaling_notification.asg", "aws_iam_role.ec2-instance-profile", "aws_iam_role.codedeploy", "aws_efs_file_system.volume", "aws_efs_mount_target.az-mnt"]
  name = "codedeploy-deployment-groups-demo"
  on_failure = "DO_NOTHING"
  template_body = <<STACK
{
  "AWSTemplateFormatVersion":"2010-09-09",
  "Description":"CloudFormation JSON Script that will launch an EC2 Instance behind an Elastic LoadBalancer ",
  "Resources":{
    "cdgrpDemoApp":{
      "Type":"AWS::CodeDeploy::DeploymentGroup",
      "Properties":{
        "ApplicationName":"devtools-cdapp-demoeco-demoapp-stg",
        "DeploymentGroupName":"devtools-cdgrp-demoeco-demoapp-cloudf",
        "DeploymentConfigName":"CodeDeployDefault.OneAtATime",
        "AutoScalingGroups":[
          "EC2.ASG | demoeco | demoapp | stg | NO Advance Metrics"
        ],
        "Deployment":{
          "Description":"First time",
          "IgnoreApplicationStopFailures":"true",
          "Revision":{
            "RevisionType":"GitHub",
            "GitHubLocation":{
              "CommitId":"be0af9405846591ff5d47da598dbd365d96c33ce",
              "Repository":"gfisaris/aws-codedeploy-app-revision"
            }
          }
        },
        "ServiceRoleArn":"${aws_iam_role.codedeploy.arn}"
      }
    }
  }
}
STACK
}


/*
resource "aws_cloudformation_stack" "codedeploy-app-revision" {
  depends_on = ["aws_codedeploy_app.webapp", "aws_autoscaling_group.asg", "aws_autoscaling_notification.asg", "aws_iam_role.ec2-instance-profile", "aws_iam_role.codedeploy", "aws_efs_file_system.volume", "aws_efs_mount_target.az-mnt"]
  name = "codedeploy-deployment-groups-demo"
  on_failure = "DO_NOTHING"
  template_body = <<STACK
{
  "AWSTemplateFormatVersion":"2010-09-09",
  "Description":"CloudFormation JSON Script that will launch an EC2 Instance behind an Elastic LoadBalancer ",
  "Resources":{
    "cdgrpDemoApp":{
      "Type":"AWS::CodeDeploy::DeploymentGroup",
      "Properties":{
        "ApplicationName":"devtools-cdapp-demoeco-demoapp-stg",
        "DeploymentGroupName":"devtools-cdgrp-demoeco-demoapp-cloudf",
        "DeploymentConfigName":"CodeDeployDefault.OneAtATime",
        "AutoScalingGroups":[
          "EC2.ASG | demoeco | demoapp | stg | NO Advance Metrics"
        ],
        "Deployment":{
          "Description":"First time",
          "IgnoreApplicationStopFailures":"true",
          "Revision":{
            "RevisionType":"S3",
            "S3Location":{
              "Bucket":"aws.codedeploy",
              "Key":"app.revisions/20160610REV-asgGEMApps.zip",
              "BundleType":"Zip",
              "ETag":"927251a220966bcf3fe9b5a389f9c73f"
            }
          }
        },
        "ServiceRoleArn":"${aws_iam_role.codedeploy.arn}"
      }
    }
  }
}
STACK
}
*/
