resource "aws_iam_role" "pipeline_role" {
  name = "pipeline_role"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "codepipeline.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_role_policy" "pipeline_policy" {
  name = "pipeline_policy"
  role = aws_iam_role.pipeline_role.id
  policy = "${file("cicd_cp_iam_policy.json")}"
}