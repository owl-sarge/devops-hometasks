

resource "kubernetes_deployment_v1" "wcg-terraform" {
  metadata {
    name = "wcg-terraform"
    labels = {
      app = "wcg"
    }
  }

  spec {

    selector {
      match_labels = {
        app = "wcg"
      }
    }

    template {
      metadata {
        labels = {
          app = "wcg"
        }
      }

      spec {
        container {
          image             = "ghcr.io/owl-sarge/wcg:latest"
          name              = "wcg"
          image_pull_policy = "Always"
          port {
            container_port = 8888
          }
        }
      }
    }
  }
}