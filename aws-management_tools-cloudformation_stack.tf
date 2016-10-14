resource "aws_cloudformation_stack" "codedeploy-app-revision" {
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
              "Key":"20160610REV-asgGEMApps.zip",
              "BundleType":"Zip",
              "ETag":"927251a220966bcf3fe9b5a389f9c73f"
            }
          }
        },
        "ServiceRoleArn":"arn:aws:iam::547013329349:role/iam-role-dtcd-demoeco-demoapp-stg"
      }
    }
  }
}
STACK
}
