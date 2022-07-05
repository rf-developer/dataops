########################
#
########################
variable "gcp_services_list" {
  type    = list(string)
  default = ["bigquery.googleapis.com", "bigquerystorage.googleapis.com","iam.googleapis.com", "iamcredentials.googleapis.com","pubsub.googleapis.com", "dataflow.googleapis.com"]
}



