resource "google_container_cluster" "primary" {
  name     = "k8s-security-cluster"
  location = "europe-west2"

  enable_autopilot = true
}