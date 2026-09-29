
resource "aws_instance" "this" {
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.my-sg.id]
  tags = {
    Name        = "terraform-Demo"
    description = "Linux server configuration on Terraform"
  }

}






resource "aws_security_group" "my-sg" {
  name        = "allow-mysg"
  description = "inbound and outbound securitys for intance"


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]


  }
  tags = {
    Name = "my-sg-creation"
  }
}



