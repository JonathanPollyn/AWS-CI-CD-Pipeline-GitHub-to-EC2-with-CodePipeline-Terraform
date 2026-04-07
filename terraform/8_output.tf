locals {
  app_name = var.project_name
  codedeploy_app_name = "${var.project_name}-app"
  deployment_group = "${var.project_name}-dg"
  pipeline_name = "${var.project_name}-pipeline"
  build_project_name = "${var.project_name}-build"
  ec2_name = "${var.project_name}-server  "
}