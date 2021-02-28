/*
installing multiple providers using single required_provider block
creating multiple alias for different regions

*/

terraform {
  required_providers{
      digitalocean = {
        source ="digitalocean/digitalocean"
        version ="1.22.2"

                     } 
     aws = {
          }

                   }
}


provider aws{
    region = "us-west-1"
    alias = "west"
    shared_credentials_file="C:\\Users\\terraform\\.aws\\creds"
    profile = "default"


}
provider "aws" {
  region = "us-east-1"
  shared_credentials_file="C:\\Users\\terraform\\.aws\\creds"
  profile = "default"

}

