provider "aws" {
    region = "eu-west-2"
}

variable vpc_cidr {}
variable subnet_cidr {}
variable env {}
variable my_key {}

resource "aws_vpc" "my-vpc" {
    cidr_block = var.subnet_cidr
    tags = {
        Name = "${var.env}-VPC"
    }
}
    
resource "aws_subnet" "my-subnet" {
    vpc_id = aws_vpc.my-vpc.id
    availability_zone = "eu-west-2b"
    cidr_block = var.subnet_cidr
    tags = {
        Name = "${var.env}-subnet"
    }
}

resource "aws_internet_gateway" "my-igw" {
    vpc_id = aws_vpc.my-vpc.id
    tags = {
        Name = "${var.env}-igw"
    }
}

resource "aws_route_table" "my-rtb" {
    vpc_id = aws_vpc.my-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my-igw.id
    }
    tags = {
        Name = "${var.env}-rtb"
    }
}

resource "aws_route_table_association" "my-rtb-i" {
    subnet_id = aws_subnet.my-subnet.id
    route_table_id = aws_route_table.my-rtb.id
}

resource "aws_security_group" "my-sgw" {
    name = "my-ec2-sgw"
    description = "my security gateway for ec2 instance"
    vpc_id = aws_vpc.my-vpc.id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["13.41.196.46/32","13.41.199.29/32"]
    }

    ingress {
        from_port = 8080
        to_port = 9000
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "my_security_rules"
    }
}

resource "aws_key_pair" "my_key_pair" {
    key_name = "kaushal-key"
    public_key = file(var.my_key)
}

resource "aws_instance" "my-ec2" {
    ami = "ami-084e8c05825742534"
    availability_zone = "eu-west-2b"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.my-subnet.id
    associate_public_ip_address = true
    key_name = aws_key_pair.my_key_pair.key_name
    security_groups = [aws_security_group.my-sgw.id]

    user_data = <<-EOF
    sudo yum update -y
    sudo yum install -y docker
    sudo service docker start
    sudo usermod -a -G docker ec2-user
    EOF


    tags = {
        Name = "${var.env}-instnace"
    }
}
