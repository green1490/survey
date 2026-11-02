resource "incus_network_forward" "forward_http" {
  network = module.control_network.network_name

  listen_address = "172.16.1.10"

  ports = [
    {
      description     = "HTTP"
      protocol        = "tcp"
      listen_port     = "3000"
      target_port     = "3000"
      target_address  = "172.16.1.100"
    }
  ]
}
