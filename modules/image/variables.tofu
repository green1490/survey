variable "name" {
  type = string
  description = "The image to use from incus's remote repository"
}

variable "remote" {
  type = string
  description = "Name of the remote"
  default = "images"
}
