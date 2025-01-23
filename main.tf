provider "aws" {
	region = "ap-south-1"
}

terraform {
	backend "s3" {
		bucket = "tf-aws-s3-buk"
		key = "terraform.tfstate"
		region = "ap-south-1"
	}
}

resource "aws_instance" "new_inst" {
	ami = "ami-00bb6a80f01f03502"
	instance_type = "t2.micro"
	tags = {
		Name = "tf_inst"
	}
}
