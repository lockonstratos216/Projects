#creates an s3 bucket
resource "aws_s3_bucket" "bucket01" {
    bucket = "${var.environment}-test-bucket-d"
    tags = {
            Name = "${var.environment}-test-bucket-d"
        }
}
