output "cluster_id" {
  value = module.eks.cluster_id
}

output "kubeconfig" {
  value = module.eks.kubeconfig
}

output "node_group_role_arns" {
  value = module.eks.node_group_role_arns
}
