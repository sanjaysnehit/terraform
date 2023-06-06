data "tls_certificate" "cluster" {
  url = var.eks_cluster_oidc_issuer_url
}

