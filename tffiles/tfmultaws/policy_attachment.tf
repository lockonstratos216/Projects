#S3 bucket attachment policy
resource "aws_iam_role_policy_attachment" "attach_s3_policy" {
  role       = aws_iam_role.role_ec2_s3_1.name
  policy_arn = aws_iam_policy.policy_s3_1.arn
}

