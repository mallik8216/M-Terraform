resource "aws_instance" "this" {
    ami = "ami-0220d79f3f480ecf5" 
    instance_type = "t3.micro"
    count = 2
    vpc_security_group_ids = [aws_security_group.my-sg.id]
    
    tags = {
      Name = "Terraform-Demo"
      description = "Instance builded using Terraform"


    }
  
}



resource "aws_security_group" "my-sg" {
    name = "my-sg"
    description = "serviceGroup for instance "

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]

    }

    tags = {
      type = map
      default {
        Name = "my-sg service"
        
      }
    }
}