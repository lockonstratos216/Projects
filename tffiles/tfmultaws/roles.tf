#IAM roles for s3 and ec2
resource "aws_iam_role" "role_ec2_s3_1" {
  name = ""

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      },
    ]
  })
}


