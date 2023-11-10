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


## improvements or feature to add in future
- add lifecycle hooks to add testing before deploying or switching traffic.
- improve quality of naming the resources
- Think about how to do initial terraform deployment though pipeline or by some other mean which is more reliable and colaborative than local terminal
- Can add another container to the task such as a sidecar to collects for services like datadog
- Can add manaul approval step if required in the pipeline before deployment.
- Improve the quiality of this readme file.
- Add s3 backend for terraform state file storage
- Review IAM permissions to make sure they are alligned with Least Priviledge Principle.
- Add an example to readme to show how to use this project as a terraform module.
