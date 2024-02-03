

resource "kubernetes_deployment_v1" "wcg-terraform" {
  metadata {
    name = "wcg-terraform"
    labels = {
      app = var.labels
    }
  }

  spec {

    selector {
      match_labels = {
        app = var.labels
      }
    }

    template {
      metadata {
        labels = {
          app = var.labels
        }
      }

      spec {
        container {
          image             = var.image
          name              = var.image_name
          image_pull_policy = "Always"
          port {
            container_port = var.container_port
          }
        }
      }
    }
  }
}