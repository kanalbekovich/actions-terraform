provider aws {
    region = "us-east-2"     #var.region
}

resource "aws_instance" "web" {
  ami           = "ami-06971c49acd687c30"  #var.ami_id
  instance_type = "t2.micro"  #var.instance_type
}

#variable region {}
#variable ami_id {}
#variable instance_type {}

terraform {
  backend "s3" {
    bucket = "kaizen-kanatk"
    key    = "terraform.tfstate"
    region = "us-east-2"
    use_lockfile = true
  }
}
