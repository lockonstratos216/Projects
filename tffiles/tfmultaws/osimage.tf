#image configuration
data "aws_ami" "os_image" {
  owners = ["099720109477"]
  most_recent = true
  filter {
    name   = "state"
    values = ["available"]
  }
  filter {
    name = ""
    values = ["ubuntu/images/hvm-ssd/*amd64*"]
  }
}

#key pair config
resource "aws_key_pair" "keypair" {
  key_name   = ""
  public_key = file("")
}