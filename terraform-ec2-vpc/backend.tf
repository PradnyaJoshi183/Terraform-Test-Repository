terraform {
  backend "s3" {
    bucket         = "tf-state-ec2-ubuntu"
    key            = "ec2/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
