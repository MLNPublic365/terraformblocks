resource "aws_security_group" "mysg" {
name= "terraform_security_group"
description= "terraform security"

ingress {
from_port= 22
to_port= 22
protocol= "tcp"
cidr_blocks= ["0.0.0.0/0"]
}

ingress {
from_port= 0
to_port= 0
protocol= "-1"
}

egress {
from_port= 0
to_port= 0
protocol= "-1"
}
}
