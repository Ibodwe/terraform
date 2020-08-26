resource "aws_instance" "example" {
    ami = var.ami_images    
    instance_type = "t2.micro"
    key_name = aws_key_pair.example.key_name

    connection{
        type = "ssh"
        user = "ubuntu"
        private_key = file(var.Secret_key)
        host = self.public_ip
    }
}