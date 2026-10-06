resource "incus_image" "image" {
  source_image = {
    remote = var.remote
    name = var.name
    type = "virtual-machine"
  }
}
