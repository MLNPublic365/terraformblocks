#variablesBlock

variable "iami" {
description= "ami_id"
type= string
default= "ami-00ca32bbc84273381"
}

variable "icount" {
description= "no of ec2 instance"
type= number
default= 3
}

variable "izone" {
description= "availablity_zone"
type= list(string)
default= ["us-east-1a","us-east-1b"]
}

variable "itype" {
description= "instance_type"
type= string
default= "t2.micro"
}

variable "isize" {
description= "ebsvolumesize"
type= number
default= 20
}
