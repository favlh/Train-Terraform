resource "google_compute_firewall" "rules" {
    project     = "nasir-441404"
    name        = "allow-webserver-firja"
    network     = "firja-vpc"
    description = "Allow webserver"


    allow {
        protocol    = "tcp"
        ports       = ["22"]
        
    }
    
    source_ranges   = ["0.0.0.0/0"]

    target_tags     = ["webserver"]
}