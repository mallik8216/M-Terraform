

resource "aws_instance" "this" {
  ami                    = var.ami_id
  instance_type          = var.environment == "prod" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.asg-2.id]

  tags = var.ec2_tags

}
resource "aws_security_group" "asg-2" {
  name        = "asg-2"
  description = "creating my second service group for terraform instance"


  ingress {

    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags

  }

