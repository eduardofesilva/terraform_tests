resource "aws_elasticsearch_domain" "example" {
  domain_name           = "${var.domain}"
  elasticsearch_version = "6.3"

  cluster_config {
    instance_type = "r4.large.elasticsearch"
  }

  ebs_options {
    ebs_enabled = true
    volume_size = 40
  }

  snapshot_options {
    automated_snapshot_start_hour = 23
  }
}
