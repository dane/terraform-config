resource "github_repository" "target" {
  allow_auto_merge       = false
  allow_merge_commit     = true
  allow_rebase_merge     = true
  allow_squash_merge     = true
  archived               = var.archived
  has_downloads          = false
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  delete_branch_on_merge = true
  name                   = var.name
  description            = var.description
  homepage_url           = var.homepage_url
  visibility             = var.visibility
  topics                 = var.topics
}

resource "github_branch" "target" {
  repository = github_repository.target.name
  branch     = "main"
}
