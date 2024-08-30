
//definindo o provider
//Peguei o provider que eu tô usando no site do terraform
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.64.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region= "us-east-1"

}