################################################################
#### DNS ZONE CAILUN.COM.BR
################################################################
module "zona_EmpresaX" {
  source     = "terraform-aws-modules/route53/aws//modules/zones"
  version = "~> 2.0"
  zones = {
    "${var.zones_EmpresaX}" = {
      comment = "${var.zones_EmpresaX} (production)"
      tags = merge(var.globaltags)
    }
  }
  tags = merge(var.globaltags)
}

module "dns_records_EmpresaX" {
  source      = "terraform-aws-modules/route53/aws//modules/records"
  version = "~> 2.0"
  zone_name   = keys(module.zona_EmpresaX.route53_zone_zone_id)[0]
  records     = [
  {
    name    = ""
    type    = "A"
    ttl     = 3600
    records = [
      "177.52.181.86",
    ]
  },
  {
    name    = "autoconfig"
    type    = "A"
    ttl     = 3600
    records = [
      "177.52.181.86",
    ]
  },
    {
    name    = ""
    type    = "TXT"
    ttl     = 3600
    records = [
      "v=spf1 include:spf.protection.outlook.com -all",
      "MS=832BC39ABB0F1595D379CA4C0E2A14DD014A48D4",
    ]
  },
    {
    name    = "www"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "EmpresaX.app.br",
    ]
  },
    {
    name    = "ftp"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "EmpresaX.app.br",
    ]
  },
  {
    name    = "_carddav._tcp"
    type    = "SRV"
    ttl     = 3600
    records = [
      "0 0 2079 cachoeirinha.adentro.com.br",
    ]
  },
  {
    name    = "_caldav._tcp"
    type    = "SRV"
    ttl     = 3600
    records = [
      "0 0 2079 cachoeirinha.adentro.com.br",
    ]
  },
  {
    name    = ""
    type    = "MX"
    ttl     = 3600
    records = [
      "0 EmpresaX-app-br.mail.protection.outlook.com",
    ]
  },
  {
    name    = "_caldavs._tcp"
    type    = "SRV"
    ttl     = 3600
    records = [
      "0 0 2080 cachoeirinha.adentro.com.br",
    ]
  },
  {
    name    = "_carddav._tcp"
    type    = "TXT"
    ttl     = 3600
    records = [
      "path=/",
    ]
  },
  {
    name    = "_caldavs._tcp"
    type    = "TXT"
    ttl     = 3600
    records = [
      "path=/",
    ]
  },
  {
    name    = "_caldav._tcp"
    type    = "TXT"
    ttl     = 3600
    records = [
      "path=/",
    ]
  },
  {
    name    = "webdisk"
    type    = "A"
    ttl     = 3600
    records = [
      "177.52.181.86",
    ]
  },
  {
    name    = "whm"
    type    = "A"
    ttl     = 3600
    records = [
      "177.52.181.86",
    ]
  },
  {
    name    = "_autodiscover._tcp"
    type    = "SRV"
    ttl     = 3600
    records = [
      "0 0 443 cpanelemaildiscovery.cpanel.net",
    ]
  },
  {
    name    = "cpcontacts"
    type    = "A"
    ttl     = 3600
    records = [
      "177.52.181.86",
    ]
  },
  {
    name    = "_carddavs._tcp"
    type    = "SRV"
    ttl     = 3600
    records = [
      "0 0 2080 cachoeirinha.adentro.com.br",
    ]
  },
  {
    name    = "_carddavs._tcp"
    type    = "TXT"
    ttl     = 3600
    records = [
      "path=/",
    ]
  },
  {
    name    = "cpanel"
    type    = "A"
    ttl     = 3600
    records = [
      "177.52.181.86",
    ]
  },
  {
    name    = "cpcalendars"
    type    = "A"
    ttl     = 3600
    records = [
      "177.52.181.86",
    ]
  },
  {
    name    = "default._domainkey"
    type    = "TXT"
    ttl     = 3600
    records = [
      "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAyu/PXm4TqgSD26HOoqgJA49Y2NY4lK3BSHbq8AhslMQZWbftYyjF6DBXiC2p8CyQ4p/Jgp4B5U9S+iooH/XGNdCfq0k6tRyexkf5QaDW8MeFjBJ1x8E60WIMpWWUSJcm6+xNNov0iXicRKKB8FJYLeHRSjHZo+0KRoq7BrUzJsHnMuZa+1hO1/LX3GlxCIoxJ",
      "0rTpa0JrYwGzoYdek6AkEg53nujn5YL7zHy25tQ14srYvvJQ6HsoyQZCKburmS+b44cnli+2FoToZBQ7iKyfZ+A3uJAnODemjVw1Qb8+e5Pm6QqmV1lbJHqGzD7mh4NVTFysrBP7S3bMK6ZO1jXJwIDAQAB;",
    ]
  },
  {
    name    = "_cpanel-dcv-test-record"
    type    = "TXT"
    ttl     = 3600
    records = [
      "_cpanel-dcv-test-record=By7bLze84pdKE9g4C0iKhBM4_LkFexBO3gZta78DqECNFaXCHRc5AO6vOKQHEhmn",
    ]
  },
  {
    name    = "autodiscover"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "autodiscover.outlook.com",
    ]
  },
  {
    name    = "_sip._tls"
    type    = "SRV"
    ttl     = 3600
    records = [
      "100 1 443 sipdir.online.lync.com",
    ]
  },
  {
    name    = "_sipfederationtls._tcp"
    type    = "SRV"
    ttl     = 3600
    records = [
      "100 1 5061 sipfed.online.lync.com",
    ]
  },
  {
    name    = "sip"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "sipdir.online.lync.com",
    ]
  },
  {
    name    = "lyncdiscover"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "webdir.online.lync.com",
    ]
  },
  {
    name    = "enterpriseregistration"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "enterpriseregistration.windows.net",
    ]
  },
  {
    name    = "enterpriseenrollment"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "enterpriseenrollment.manage.microsoft.com",
    ]
  },
  {
    name    = "_a0e65f29b10314ba4e8926f0c8419f98.autodiscover"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "8ca29f209559f29bfb9f999acd407e91.6e27d2d01b2e5e72bda2d7d565effaac.comodoca.com",
    ]
  },
  {
    name    = "_a0e65f29b10314ba4e8926f0c8419f98.webmail"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "8ca29f209559f29bfb9f999acd407e91.6e27d2d01b2e5e72bda2d7d565effaac.comodoca.com",
    ]
  },
  {
    name    = "_a0e65f29b10314ba4e8926f0c8419f98.mail"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "8ca29f209559f29bfb9f999acd407e91.6e27d2d01b2e5e72bda2d7d565effaac.comodoca.com",
    ]
  },
 {
    name    = "_6554fe1c0511ddb268501ada3daa318b.mail"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "35c8fa92a8a746f1990dbd2c9b2a44e1.6ed4dd652d37333935f7b7d1fc51296c.comodoca.com",
    ]
  },
 {
    name    = "_6554fe1c0511ddb268501ada3daa318b.webmail"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "35c8fa92a8a746f1990dbd2c9b2a44e1.6ed4dd652d37333935f7b7d1fc51296c.comodoca.com",
    ]
  },
 {
    name    = "_6554fe1c0511ddb268501ada3daa318b.autodiscover"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "35c8fa92a8a746f1990dbd2c9b2a44e1.6ed4dd652d37333935f7b7d1fc51296c.comodoca.com",
    ]
  },
 {
    name    = "skauth-dev"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "acbd4c43eed384d159ab6c24bc994474-86de4f5d831e1af9.elb.us-east-1.amazonaws.com",
    ]
  },
 {
    name    = "skanestesio-dev"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "acbd4c43eed384d159ab6c24bc994474-86de4f5d831e1af9.elb.us-east-1.amazonaws.com",
    ]
  },
 {
    name    = "sxinfinity-dev"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "acbd4c43eed384d159ab6c24bc994474-86de4f5d831e1af9.elb.us-east-1.amazonaws.com",
    ]
  },
 {
    name    = "dev-EmpresaX-bucket-pdf"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "d5yxz0k1oeaqk.cloudfront.net",
    ]
  },
 {
    name    = "dev-notificacao-api-service"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "dleu2qh2fk5fl.cloudfront.net",
    ]
  },
 {
    name    = "dev-caranthir-middleware-service"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "dkfs9pj0dwm5p.cloudfront.net",
    ]
  },
##################
#    Produção    #
##################

{
    name    = "skauth"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "a11f409ef75454227b7fa76e97ae9983-aa6cffd09d6afa57.elb.us-east-1.amazonaws.com",
    ]
  },
{
    name    = "skanestesio"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "a11f409ef75454227b7fa76e97ae9983-aa6cffd09d6afa57.elb.us-east-1.amazonaws.com",
    ]
  },
{
    name    = "sxinfinity"
    type    = "CNAME"
    ttl     = 3600
    records = [
      "a11f409ef75454227b7fa76e97ae9983-aa6cffd09d6afa57.elb.us-east-1.amazonaws.com",
    ]
  },

]
  depends_on  = [module.zona_EmpresaX]
}
