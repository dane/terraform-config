module "protos" {
  source     = "./modules/github-repo"
  name       = "protos"
  visibility = "public"
  topics     = ["docker", "podman", "protoc", "protobuf", "protocol-buffers", "grpc"]
}

module "skyfall" {
  source     = "./modules/github-repo"
  name       = "skyfall"
  visibility = "public"
}

module "protoc-gen-go-svc" {
  source     = "./modules/github-repo"
  name       = "protoc-gen-go-svc"
  visibility = "public"
  topics     = ["protobuf", "protocol-buffers", "grpc", "protoc"]
}

module "dna" {
  source      = "./modules/github-repo"
  name        = "dna"
  description = "My DNA"
  visibility  = "public"
  topics      = []
}


module "dotfiles" {
  source      = "./modules/github-repo"
  name        = "dotfiles"
  description = "My dotfiles and system setup"
  visibility  = "public"
  topics = [
    "ansible",
    "dotfiles",
    "linux-desktop",
    "local-development",
    "local-machine",
  ]
  archived = true
}


module "wallpapers" {
  source      = "./modules/github-repo"
  name        = "wallpapers"
  description = "A collection of wallpapers I like"
  visibility  = "public"
  topics      = []
}


module "minimal-dark_vim" {
  source      = "./modules/github-repo"
  name        = "minimal-dark.vim"
  description = "Minimal dark vim theme"
  visibility  = "public"
  topics      = []
}


module "x" {
  source     = "./modules/github-repo"
  name       = "x"
  visibility = "public"
  topics     = []
}


module "desktop-openbsd" {
  source      = "./modules/github-repo"
  name        = "desktop-openbsd"
  description = "Auotmated OpenBSD configuration"
  visibility  = "public"
  topics      = []
}


module "minimal-light_vim" {
  source      = "./modules/github-repo"
  name        = "minimal-light.vim"
  description = "Minimal light vim theme"
  visibility  = "public"
  topics      = []
}


module "desktop-macos" {
  source      = "./modules/github-repo"
  name        = "desktop-macos"
  description = "Somewhat automated MacOS configuration"
  visibility  = "public"
  topics      = []
}


module "pride" {
  source      = "./modules/github-repo"
  name        = "pride"
  description = "Run any terminal command with pride!"
  visibility  = "public"
  topics      = []
}


module "mini" {
  source       = "./modules/github-repo"
  name         = "mini"
  description  = "A minimal Hugo blog theme that is responsive with a touch of purple."
  homepage_url = "https://daneharrigan.com"
  visibility   = "public"
  topics = [
    "hugo-blog-theme",
    "hugo-theme",
    "minimal",
  ]
}

resource "github_repository" "dane_github_io" {
  name         = "dane.github.io"
  description  = "Another minimal Hugo blog"
  homepage_url = "https://daneharrigan.com"
  visibility   = "public"
  topics = [
    "blog",
    "engineering",
    "hugo-blog",
  ]

  allow_auto_merge       = false
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = false
  has_downloads          = false
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  delete_branch_on_merge = true

  pages {
    build_type = "workflow"
    cname      = "daneharrigan.com"

    source {
      branch = "main"
      path   = "/"
    }
  }
}

resource "github_branch" "dane_github_io" {
  repository = github_repository.dane_github_io.name
  branch     = "main"
}
