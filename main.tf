module "networking" {
  count = length(local.network_yaml.networks)

  source = "../itsf-infra-modules/networking"

  org     = local.vcd_org
  org_vdc = local.vcd_org_vdc

  edge_gateway_default = var.vcd_edge_gateway_default
  edge_cluster_default = var.vcd_edge_cluster_default

  yaml    = local.network_yaml.networks[count.index]
  company = local.network_yaml.company
  project = local.network_yaml.project
}