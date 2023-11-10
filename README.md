# How to use this project

- how to create terraform env
export AWS_PROFILE=YOUR_AWS_PROFILE_NAME && terraform apply -var-file="../secret_vars.tfvars"

- content of secret_vars.tfvars

cluster_name="YOUR_VALUE"
ecs_name="YOUR_VALUE"
container_name="YOUR_VALUE"
ecs_task_def_family="YOUR_VALUE"
subnets="YOUR_VALUE"
region="YOUR_VALUE"
bucket_name="YOUR_VALUE"
repository_name="YOUR_VALUE"
ecr_repository_name="YOUR_VALUE"
code_deploy_application="YOUR_VALUE"
deployment_group_name="YOUR_VALUE"
vpc="YOUR_VALUE"
placeholder_app_image="YOUR_VALUE"
ecr_url="YOUR_VALUE"
policy_arn="YOUR_VALUE"



