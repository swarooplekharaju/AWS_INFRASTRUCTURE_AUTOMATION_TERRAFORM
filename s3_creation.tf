/*
store your aws credentials as config in .aws folder inside terraform directory 
use profile default which tells terraform to locate credentials in .aws 
*/


provider "aws" { 
  profile = "default"
  region = "us-west-2"
}

resource "aws_s3_bucket" "s3_example" {
    bucket = "tf-practice-s3"
    acl="private"

}