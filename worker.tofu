module "worker" {
  source = "./modules/node"
  memory = "8GB"
  name = "worker"
  network_name = module.worker_network.network_name
  storage_name = module.storage.storage_name
  vcpu = "4"
  cloud_init = file("cloud-init/worker.yaml")
  fingerprint = module.image.fingerprint
  ipv4 = null
}
