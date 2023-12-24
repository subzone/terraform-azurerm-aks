resource "azurerm_kubernetes_cluster_node_pool" "this" {
  name                  = var.worker_node_pool_name
  kubernetes_cluster_id = var.aks_cluster_id
  vm_size               = var.worker_node_pool_vm_size
  node_count            = var.worker_node_count

  tags = var.tags
}