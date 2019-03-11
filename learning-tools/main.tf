provider "aws" {
  region      = "us-east-2"
  access_key  = "AKIAJMDZETVFNSWNWNXA"
  secret_key  = "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"
}

resource "aws_instance" "myfirstec2" {
  ami = "ami-0cd3dfa4e37921605"
  instance_type = "t2.micro"
    tags {
      Name  = "DemoServer"
    }

}

output "public_ip"  {
  value = "${aws_instance.myfirstec2.public_ip}"
}
output "id"  {
  value = "${aws_instance.myfirstec2.id}"
}
output "public_dns"  {
  value = "${aws_instance.myfirstec2.public_dns}"
}
output "security_groups"  {
  value = "${aws_instance.myfirstec2.security_groups}"
}
output "subnet_id"  {
  value = "${aws_instance.myfirstec2.subnet_id}"
}
output "VPC_security_group"  {
  value = "${aws_instance.myfirstec2.vpc_security_group_ids}"
}
