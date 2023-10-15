# terra-key is just the name of the resource and not the name of the key
resource "aws_key_pair" "terra-key" {
  # this is the actual name of the key 
  key_name = "new-terraform-key"
  # the content of the public key is copied to the public_key variable
  public_key = file("terrakey.pub")
}

resource "aws_instance" "terraform-inst" {
  ami               = var.AMIS[var.REGION]
  instance_type     = "t2.micro"
  availability_zone = var.ZONE1

  # the key will be accessed as resource_type.resource_name.attribute_name
  key_name = aws_key_pair.terra-key.key_name

  vpc_security_group_ids = ["sg-0231a0a1ceef3aaf4"]
  tags = {
    Name    = "Terraform-Instance"
    Project = "IaC"
  }

  # this is the code to push the script file on the ec2 instance
  # the source file has the script code
  # the destination is the directory on the linux based ec2 instace
  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  # these steps are used to execute the script
  provisioner "remote-exec" {
    # the 1st line gives execute permission to the user
    # the 2nd line executes the script
    inline = [
      "chmod +x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }

  # use the user mentioned in the vars.tf file
  connection {
    user        = var.USER
    private_key = file("terrakey")
    # use the public key of the instance
    host = self.public_ip
  }
}