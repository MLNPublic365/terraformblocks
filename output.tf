output "abc" {
  value = [
    aws_instance.mln[*].public_ip,
    aws_instance.mln[*].private_ip,
    aws_instance.mln[*].id
  ]
}
