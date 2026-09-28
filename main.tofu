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

    talos = {
      source = "siderolabs/talos"
      version = "0.12.0"
    }
  }
}

provider "incus" {

}

provider "kubernetes" {

}

provider "talos" {

}
