#output for arn
output "arn" {
  value = aws_instance.instance1.arn
}

#output for public ip
output "public_ip" {
  value = aws_instance.instance1.public_ip
}

#output for bucket name
output "bucket_name" {
  value = aws_s3_bucket.bucket01.bucket
}

#output for instance id
output "instance_id" {
  value = aws_instance.instance1.id
}