provider "aws" {
region     = "us-west-1"
  access_key = "AKIAVTQFCN3L7AJP5I32"
  secret_key = "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"
}

locals {
  common_tag = {
    Name = "jjtech"
    App_Name = "Ovid"
    cost_center = "xyz222"
    Buisness_unit = "GBS"
    project = "GBS"
    App_role = "web server"
    customer = "student"
    enviroment = "dev"
    confidentiality = "restricted"
    owner = "jespo_mbwoge@jjtechinc.co"
    opt_in-opt_out ="yes"
    Application_ID = "197702"
    compliance = "pci"
  }
}
resource "aws_instance" "jjtechweb" {
 ami =var.ami_id
 instance_type = var.instance_type"

}
output "jjtech-ec2" {
  value = aws_instance.jjtechweb.public_ip
}
resource "aws_eip" "lb" {
vpc      = true
}
output "jjtech_eip" {
  value = "aws_eip.jjtechEip.id
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.jjtechweb.id
  allocation_id = aws_eip.jjtechEip.id

  #########INSTANCES########################
  resource  "aws_instance" "jjtechEC2" {
     ami     - var.ami_id.RHEL
     instance_type -var.instance_type[1]
     tag - local.commom_tag
  }

resource "aws_instance" "jjtechEC2" {
  ami - var.ami_id.windows
  instance_type-var.instance_type[0]
   tag - local.common_tags

 resource "aws_instance" "jjtechEC2" {
   ami     =var.ami_id.ubuntu
   instance_type =var.instance_type[2]
   tag = local.commom_tag
 }
}
