terraform {
  required_providers {
    incus = {
      source = "lxc/incus"
      version = "1.2.0"
    }

    kubernetes = {
      source = "opentofu/kubernetes"
      version = "3.2.1"
    }
  }
}

provider "incus" {
  remote {
    name = "windsor"
    address = "https://images.windsorcli.dev"
    protocol = "simplestreams"
    public = true
  }
}

provider "kubernetes" {

}
