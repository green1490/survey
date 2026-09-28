resource "incus_storage_volume" "talos" {
  name = "root"
  pool = incus_storage_pool.pool.name
}
