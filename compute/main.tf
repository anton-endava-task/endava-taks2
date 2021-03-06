#---compute/main.tf

data "aws_ami" "server_ami" {
    most_recent = true
    owners = ["amazon"]

    filter {
        name = "owner-alias"
        values = ["amazon"]
    }

    filter {
        name = "name"
        values = ["amzn-ami-hvm*-x86_64-gp2"]
    }
}

resource "aws_key_pair" "endava_auth" {
    key_name = "${var.key_name}"
    public_key = "${file(var.public_key_path)}"
}






