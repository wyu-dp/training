provider "dnsimple" {
  ##  token   = "${var.dnsimple_token}"
  ##  account = "${var.dnsimple_account}"
  token = "dnsimple_token"

  account = "dnsimple_account"
}

resource "dnsimple_record" "wyu" {
  domain = "datapipe.com"
  name   = "wyu"
  value  = "${aws_instance.web.0.public_ip}"
  type   = "A"
  ttl    = 3600
}
