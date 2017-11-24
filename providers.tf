provider "aws" {
    region                  = "${var.user_region}"
    shared_credentials_file = "${var.shared_credentials}"
}