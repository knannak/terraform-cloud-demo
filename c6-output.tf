# Attribute Reference
output "ec2_publicip" {
  description = "EC2 Instance Public IP"
  value       = aws_instance.myec2_linux.public_ip
}

# Attribute Reference - Create Public DNS URL 
output "ec2_publicdns" {
  description = "Public DNS URL of an EC2 Instance"
  value       = aws_instance.myec2_linux.public_dns
    }
