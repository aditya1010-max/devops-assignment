resource "google_compute_firewall" "allow_ssh" {
    name = "allow-ssh"
    network = google_compute_network.devops_vpc.name

    allow {
        protocol = "tcp" 
        ports = ["22"]
    }

    source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow_internal" {
    name = "allow-internals"
    network = google_compute_network.devops_vpc.name

    allow {
        protocol = "tcp"
    }

    allow {
        protocol = "icmp"
    }

    source_range = ["10.0.0.0/24"]
}

