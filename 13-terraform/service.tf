resource "kubernetes_service_v1" "wcg-service" {
  metadata {
    name = var.service_name
  }
  spec {
    selector = {
      app = var.labels
    }

    port {
      port        = var.service_port
      target_port = var.container_port
    }
    type = "ClusterIP"
  }
}
