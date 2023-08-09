module "daneharrigan" {
  source           = "./modules/github-pages-dns"
  domain           = "daneharrigan.com"
  github_subdomain = "dane.github.io"
  zone_id          = "09b7cef2bae63c1afab1ca03a810921e"
}

resource "cloudflare_record" "harrigandc_com_cname" {
  name    = "www"
  proxied = true
  ttl     = 1
  type    = "CNAME"
  value   = "harrigandc.com"
  zone_id = "74968147bdbdc8c08bea40132a07a054"
}

resource "cloudflare_record" "harrigandc_com_a" {
  name    = "harrigandc.com"
  proxied = true
  ttl     = 1
  type    = "A"
  value   = "192.0.2.1"
  zone_id = "74968147bdbdc8c08bea40132a07a054"
}

resource "cloudflare_ruleset" "harrigandc_redirect" {
  kind    = "zone"
  name    = "default"
  phase   = "http_request_dynamic_redirect"
  zone_id = "74968147bdbdc8c08bea40132a07a054"
  rules {
    action = "redirect"
    action_parameters {
      from_value {
        preserve_query_string = false
        status_code           = 301
        target_url {
          value = "https://www.lovettsville.palmercare.com"
        }
      }
    }
    description = "Palmercare website"
    enabled     = true
    expression  = "true"
    ref         = "93e3bcb009914e6488ae2a9ab2879c70"
  }
}
