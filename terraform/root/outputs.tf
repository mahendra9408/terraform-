output "vpc_id" {
  value = module.vpc.vpc_id
}

output "eks_cluster_id" {
  value = module.eks.cluster_id
}

output "eks_kubeconfig" {
  value = module.eks.kubeconfig
}

output "node_group_role_arns" {
  value = module.eks.node_group_role_arns
}
