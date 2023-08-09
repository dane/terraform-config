terraform {
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
