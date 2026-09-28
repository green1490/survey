resource "incus_image" "image" {
  source_file = {
    data_path = "talos.qcow2"
    metadata_path = "metadata.tar.gz"
  }
}
