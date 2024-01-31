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
        name = "wcg-tf"
        port {
          number = 80
        }
      }
    }
    rule {
      host = "wcg-local.com"
      http {
        path {
          backend {
            service {
              name = "wcg-tf"
              port {
                number = 80
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