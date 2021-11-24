output "webserver_ip" {
  value = google_compute_instance.webserver.network_interface.0.access_config.0.nat_ip
}

