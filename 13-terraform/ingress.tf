resource "kubernetes_ingress_v1" "wcg-ingress-tf" {
  metadata {
    name = "wcg-ingress-tf"
    annotations = {
      "nginx.ingress.kubernetes.io/rewrite-target" = "/"
    }
  }

  spec {
    default_backend {
      service {
        name = var.service_name
        port {
          number = var.service_port
        }
      }
    }
    rule {
      host = var.host_name
      http {
        path {
          backend {
            service {
              name = var.service_name
              port {
                number = var.service_port
              }
            }
          }

          path     = "/"
          path_type = "Prefix"
        }
      }
    }
  }
}      