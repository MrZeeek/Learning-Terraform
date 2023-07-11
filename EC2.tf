resource "aws_instance" "web" {
  ami               = "ami-0fd61683ae1a27a64"
  instance_type     = "t3.micro"
  user_data         = "${file("init.sh")}"
  subnet_id         = aws_subnet.TerraformSubnet.id
  security_groups   = [aws_security_group.LearningTerraformAllow_tls.id]
  key_name          = aws_key_pair.key_pair.key_name

  tags = {
    Name = "LearningTerraform"
  }
}

resource "aws_network_interface" "foo" {
  subnet_id   = aws_subnet.TerraformSubnet.id
  private_ips = ["10.0.1.100"]

  tags = {
    Name = "LearingTerraform"
  }
}
