# Creates a code build
resource "aws_codebuild_project" "DockerBuildTF" {
  name = "DockerBuildTF"
  artifacts {
    type = "CODEPIPELINE"
  }
  environment {
    compute_type = "BUILD_GENERAL1_SMALL"
    image = "aws/codebuild/amazonlinux2-x86_64-standard:5.0"
    type = "LINUX_CONTAINER"
    privileged_mode = true

    environment_variable {
      name  = "tag"
      value = "0.0.1"
    }    

    environment_variable {
      name  = "region"
      value = var.region
    }    

    environment_variable {
      name  = "ecr_url"
      value = var.ecr_url
    }    
    environment_variable {
      name  = "ecr_repo"
      value = var.ecr_repository_name
    }    
    environment_variable {
      name  = "task_def"
      value = aws_ecs_task_definition.ecs_task_def.family
    }    

  }
  service_role = aws_iam_role.build_role.arn
  source {
    type = "CODEPIPELINE"
    # buildspec = "${file("cicd_buildspec.yaml")}"
  }
}
