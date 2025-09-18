output "jenkins_public_ip" {
  value = aws_instance.jenkins.public_ip
}

output "jenkins_public_dns" {
  value = aws_instance.jenkins.public_dns
}

output "nginx_public_ip" {
  value = aws_instance.nginx.public_ip
}

output "nginx_public_dns" {
  value = aws_instance.nginx.public_dns
}

# Tạo file inventory.ini cho Ansible
resource "local_file" "ansible_inventory" {
  content = <<EOT

[jenkins]
${aws_instance.jenkins.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/lab01.pem

[nginx]
${aws_instance.nginx.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=~/.ssh/lab01.pem
EOT

  filename = "${path.module}/inventory.ini"
}

