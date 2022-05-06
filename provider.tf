terraform {

    required_providers {
    google = {
      source = "hashicorp/google"
      version = "~>4.16.0"
    }

    google-beta ={
      source = "hashicorp/google-beta"
      version = "~> 3.0"
    }
  }
}

provider "google" {
  project = "skilful-reserve-349011"
  region  = "us-central1"
  zone    = "us-central1-c"
  credentials = "keys.json"
}
 

provider "google-beta" {

  project = "skilful-reserve-349011"
  region  = "us-central1"
 
}