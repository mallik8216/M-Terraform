

resource "aws_instance" "this" {
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.asg-2.id]

  tags = {
    Name        = "terraform1-Demo1"
    description = "Instance created using TF"
  }

}
resource "aws_security_group" "asg-2" {
  name        = "asg-2"
  description = "creating my second service group for terraform instance"


  ingress {

    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "asg-2SG"
  }

}