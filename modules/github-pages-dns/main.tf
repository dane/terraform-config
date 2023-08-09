resource "cloudflare_record" "ipv4_a_record" {
  for_each = toset([
    "185.199.111.153",
    "185.199.110.153",
    "185.199.109.153",
    "185.199.108.153",
  ])

  name    = var.domain
  proxied = true
  ttl     = 1
  type    = "A"
  value   = each.key
  zone_id = var.zone_id
}

resource "cloudflare_record" "ipv6_aaaa_record" {
  for_each = toset([
    "2606:50c0:8003::153",
    "2606:50c0:8002::153",
    "2606:50c0:8001::153",
    "2606:50c0:8000::153",
  ])

  name    = var.domain
  proxied = true
  ttl     = 1
  type    = "AAAA"
  value   = each.key
  zone_id = var.zone_id
}

resource "cloudflare_record" "cname" {
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = var.github_subdomain
  zone_id = var.zone_id
}
