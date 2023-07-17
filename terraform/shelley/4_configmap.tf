resource "kubernetes_config_map" "this" {
  metadata {
    name      = "nginx-html"
    namespace = kubernetes_namespace.this.metadata[0].name
  }
  data = {
    "index.html" = <<EOF
      <html>
      <body>
      <h1>${var.content}</h1>
      </body>
      </html>
    EOF
  }
}