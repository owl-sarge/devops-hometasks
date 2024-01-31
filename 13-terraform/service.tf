resource "kubernetes_service_v1" "wcg-service" {
  metadata {
    name = "wcg-tf"
  }
  spec {
    selector = {
      app = "wcg"
    }

    port {
      port        = 80
      target_port = 8888
    }
    type = "ClusterIP"
  }
}
