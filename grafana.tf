data "template_file" "userrr_data" {
  template = "${file("grafana.sh")}"
}





resource "aws_instance" "grafana-itps" {
  ami             = "ami-00399ec92321828f5"
  instance_type   = "t2.xlarge"
  subnet_id       = aws_subnet.dev-public-subnet-1a.id
  security_groups = ["${aws_security_group.grafana-security-group.id}"] 
  key_name        = "${aws_key_pair.petclinicn.id}"
  user_data       = file("grafana.sh")
  tags = {
    Name = "grafana"
  }
}




#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
#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




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