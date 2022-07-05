
###############################
#
###############################
resource "google_project_service" "services" {
  for_each = toset(var.gcp_services_list)
  project = "my-project"
  service = each.value
}
