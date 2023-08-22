terraform {
  backend "s3" {
    bucket = "dane-terraform-config"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.11.0"
    }

    github = {
      source  = "integrations/github"
      version = "5.28.1"
    }
  }
}

provider "cloudflare" {}

provider "github" {}
