resource "aws_key_pair" "kp" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_instance" "ubuntu" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.ssh_sg.id]
  key_name                    = aws_key_pair.kp.key_name
  associate_public_ip_address = true

  tags = { Name = "tf-ubuntu-ec2" }
}
