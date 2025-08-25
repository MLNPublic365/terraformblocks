#resourceblock
resource "aws_instance" "mln" {
tags= {
Name= "my-${terraform.workspace}-server"
Project= "OLA"
Environment= "UAT"
}

ami= var.iami
key_name= "usnorthvirginia"
vpc_security_group_ids= [aws_security_group.mysg.id]
count = var.icount
instance_type= var.itype
availability_zone = var.izone[count.index % length(var.izone)]
root_block_device {
volume_size= var.isize
}
}
