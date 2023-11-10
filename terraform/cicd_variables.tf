variable "region" {
  type = string
  default = "your-region"
}

variable "ecr_url" {
  type = string
  default = "your-ecr-url"
}

variable "bucket_name" {
  type = string
  default = "your-bucket-name"
}

variable "repository_name" {
    type = string
    default = "your-repository-name"
}

variable "ecr_repository_name" {
    type = string
    default = "your-ecr-repo-name"
}

variable "code_deploy_application" {
    type = string
    default = "your-codedeploy-app-name"
}

variable "deployment_group_name" {
  type = string
  default = "your-deployment-group-name"
}