resource "google_compute_firewall" "allow_ssh" {
  name    = "allow-ssh"

  network = google_compute_network.vpc.name

  direction = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  # Recommended: only your public IP (not 0.0.0.0/0)
  source_ranges = ["0.0.0.0/0"]

  target_tags = ["ssh"]
}