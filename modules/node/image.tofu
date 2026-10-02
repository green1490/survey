resource "incus_image" "image" {
  source_image = {
    remote = "images"
    name = "debian/14/cloud"
    type = "virtual-machine"
  }
}
