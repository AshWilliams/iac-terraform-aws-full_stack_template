resource "aws_cloudformation_stack" "codedeploy-app-revision" {

  name = "codedeploy-deployment-groups-demo"
  template_body = <<STACK
DeploymentGroup:
  Type: "AWS::CodeDeploy::DeploymentGroup"
  Properties:
    ApplicationName: "devtools-cdapp-demoeco-demoapp-stg"
    AutoScalingGroups: "EC2.ASG | demoeco | demoapp | stg | NO Advance Metrics"
    Deployment
      Description: "Demo Time"
      IgnoreApplicationStopFailures: true
      Revision:
        RevisionType: S3
        S3Location: 
          Bucket: "aws.codedeploy"
          BundleType: Zip
          Key: "20160610REV-asgGEMApps.zip"          
          ETag: "927251a220966bcf3fe9b5a389f9c73f"
    ServiceRoleArn: "arn:aws:iam::547013329349:role/iam-role-dtcd-demoeco-demoapp-stg"
STACK
}
