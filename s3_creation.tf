/*
store your aws credentials as config in .aws folder inside terraform directory 
use profile default which tells terraform to locate credentials in .aws 

install aws cli in windows/linux 
type aws commands as well to check and practice the aws cli
aws cli for checking s3 list is aws s3 ls 

*/


provider "aws"{
region = "us-east-2"
shared_credentials_file="C:\\Users\\terraform\\.aws\\creds"
profile = "default"

}



resource "aws_s3_bucket" "s3_example" {
    bucket = "tf-practice-s3"
    acl="private"

}