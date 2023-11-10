variable "cluster_name" {
  type = string
  default = "your-cluster-name"
}

variable "ecs_name" {
  type = string
  default = "your-ecs-name"
}

variable "placeholder_app_image" {
  type = string
  default = "your-ecr-image-url"
}

variable "container_name" {
  type = string
  default = "your-container-name"
}

variable "ecs_task_def_family" {
  type = string
  default = "your-ecs-task-def-family"
}

variable "policy_arn" {
  type = string
  default = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

variable "subnets" {
  type = list(string)
  default = ["subnet-1","subnet-2"]
}


variable "vpc" {
  type = string
  default = "your-vpc-id"
}