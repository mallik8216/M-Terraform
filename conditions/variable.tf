variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
    description = "Devops AMI"
  
}

variable "instance_type" {
    default = "t3.micro"

  
}


variable "environment" {
    default = "prod"

  
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "expense-backend-dev"
        Project = "expense"
        Component = "backend"
        environment = "dev"
    }
    

}

variable "from_port" {
    default = 22
  
}
variable "to_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"

 }


variable "tags" {
        type = map
        default = {
            Name = "M-SG"
        }

}