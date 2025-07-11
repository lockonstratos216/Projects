#instance config
resource "aws_instance" "instance1" {
  ami             = data.aws_ami.os_image.id
  instance_type   = var.instance_type
  key_name        = aws_key_pair.keypair.key_name
  security_groups = [aws_security_group.sg01.name]
  iam_instance_profile = aws_iam_instance_profile.ec2_s3_profile_1.name

    user_data = <<EOF
#!/bin/bash
# Update the package manager
sudo apt-get update

# Install AWS CLI
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install


# Configure AWS CLI
aws configure set aws_access_key_id AKIAVRUVUWFTM7SRL5R4
aws configure set aws_secret_access_key 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
aws configure set default.region US-EAST-2

# Verify AWS CLI installation
aws --version
EOF

  tags = {
    Name = "Inst01"
  }
  root_block_device {
    volume_size = 10 
    volume_type = "gp3"
  }
}
