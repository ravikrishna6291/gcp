resource "google_compute_instance" "vms" {
  name         = "vm1"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }

}

resource "google_compute_disk" "os_disk" {
    name             = "additional"
    type             = "pd-standard"
    zone             = "us-central1-a"
    size             = 10
}

resource "google_compute_attached_disk" "sdisk" {
    disk             = "additional"
    instance         = "https://www.googleapis.com/compute/v1/projects/skilful-reserve-349011/zones/us-central1-a/instances/vm1"
    zone             = "us-central1-a"
    depends_on       = [
      google_compute_instance.vms, google_compute_disk.os_disk
    ]
   }
