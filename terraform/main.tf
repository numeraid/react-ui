terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 3.2.1"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

variable "namespace" {
  type    = string
  default = "numeraid-ui"
}

variable "image" {
  type    = string
  default = "ghcr.io/numeraid/react-ui:latest"
}

variable "replicas" {
  type    = number
  default = 1
}

variable "container_port" {
  type    = number
  default = 80
}

resource "kubernetes_namespace_v1" "numeraid" {
  metadata {
    name = var.namespace
  }
}

resource "kubernetes_service_v1" "numeraid" {
  metadata {
    name      = "numeraid"
    namespace = kubernetes_namespace_v1.numeraid.metadata[0].name
  }

  spec {
    selector = {
      app = "numeraid"
    }

    port {
      port        = 80
      target_port = var.container_port
    }

    type = "ClusterIP"
  }
}

resource "kubernetes_deployment_v1" "numeraid" {
  metadata {
    name      = "numeraid"
    namespace = kubernetes_namespace_v1.numeraid.metadata[0].name
  }

  spec {
    replicas = var.replicas

    selector {
      match_labels = {
        app = "numeraid"
      }
    }

    template {
      metadata {
        labels = {
          app = "numeraid"
        }
      }

      spec {
        container {
          name  = "numeraid-ui"
          image = var.image

          port {
            container_port = var.container_port
          }

          resources {
            limits = {
              cpu    = "500m"
              memory = "256Mi"
            }
            requests = {
              cpu    = "100m"
              memory = "64Mi"
            }
          }
        }
      }
    }
  }
}

output "namespace" {
  value = kubernetes_namespace_v1.numeraid.metadata[0].name
}

output "service_name" {
  value = kubernetes_service_v1.numeraid.metadata[0].name
}

output "deployment_name" {
  value = kubernetes_deployment_v1.numeraid.metadata[0].name
}
