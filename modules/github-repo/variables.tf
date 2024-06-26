variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = ""
}

variable "homepage_url" {
  type    = string
  default = ""
}

variable "topics" {
  type    = list(string)
  default = []
}

variable "visibility" {
  type = string
}

variable "archived" {
  type    = bool
  default = false
}
