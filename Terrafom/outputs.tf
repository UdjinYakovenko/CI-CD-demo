output "jenkins_ip_address" {
  value = "${aws_instance.Jenkins.public_dns}"
}

output "docker_ip_address" {
  value = "${aws_instance.Docker.public_dns}"
}