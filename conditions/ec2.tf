

resource "aws_instance "this" {

  
}





resource "aws_security_group" "sg-2" {
    Name = "sg-2"
    description = "creating my second service group for terraform instance"


    ingress {

        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]

    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

}