############################################################
# variables.tf
# Input variables used across the project
############################################################

variable "region" {
  description = "AWS region for all resources"
  type = string
  default = "us-east-1"
}   

variable "project_name" {
  description = "project mame prefix"
  type = string
  default = "github-ec2-cicd"
}

variable "artifact_bucket_name" {
  description = "Globally unique S3 bucekt name for the astifacts"
}

variable "github_owner" {
  description = "Github owner or organization"
  type =  string
}

variable "github_repo" {
  description = "GitHub repository name"
  type =  string
}

variable "github_branch" {
  description = "Github branch to watch"
  type = string
  default = "main"
}

variable "codestar_connection_arn" {
  description = "AWS codeConnections ARN for GitHub"
  type = string
}

variable "instance_tyoe" {
  description = "EC2 instance type"
  type = string
  default = "t3.micro"
}

variable "key_name" {
  description = "Existing EC2 key pair name"
  type = string
}

variable "admin_cidr" {
  description = "Public IP CIDR"
  type = string
}

variable "common_tags" {
  description = "Default tages applied to resouces"
  type = map(string)
  default = {
    Project = "github-ec2-cicd"
    Owner = "Jonathan"
  }
}