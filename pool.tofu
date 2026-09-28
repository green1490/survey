resource "incus_storage_pool" "pool" {
  name = "default"
  driver = "dir"
}
