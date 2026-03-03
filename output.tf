#display output after terraform apply

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}
