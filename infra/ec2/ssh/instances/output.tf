output "public_dns" {
  description = "DNS name of the EC2 instance"
  value       = aws_instance.aws_instance_with_terraform_ssh.public_dns
}

output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.aws_instance_with_terraform_ssh.public_ip
}
