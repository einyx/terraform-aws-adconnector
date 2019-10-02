resource "aws_directory_service_directory" "connector" {
  name     = "${var.name}"
  password = "${var.password}"
  size     = "${var.size}"
  type     = "ADConnector"

  connect_settings {
    customer_dns_ips  = ["${var.customer_dns_ips}"]
    customer_username = "${var.customer_username}"
    subnet_ids        = ["${var.subnet-1}", "${var.subnet-2}"]
    vpc_id            = "${var.vpc_id}"
  }
}
