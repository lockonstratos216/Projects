#instance profile
resource "aws_iam_instance_profile" "ec2_s3_profile_1" {
  name = ""
  role = aws_iam_role.role_ec2_s3_1.name
}