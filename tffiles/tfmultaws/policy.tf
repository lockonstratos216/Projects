#policies for S3 bucket
resource "aws_iam_policy" "policy_s3_1" {
  name   = ""
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "s3:ListBucket",
          "s3:GetObject",
          "s3:PutObject",
        ]
        Resource = [
          aws_s3_bucket.bucket01.arn,
          "${aws_s3_bucket.bucket01.arn}/*"
        ]
      },
    ]
  })
}
