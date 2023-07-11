terraform {
  required_providers {
    unifi = {
      source = "paultyng/unifi"
      version = "0.41.0"
    }
  }
}

provider "unifi" {
  username = "Terraform" # optionally use UNIFI_USERNAME env var
  password =  "password for unifi account" # optionally use UNIFI_PASSWORD env var
  api_url  = "https://192.168.1.1/proxy/network/api"  # optionally use UNIFI_API env var
  site     = "default"

  # you may need to allow insecure TLS communications unless you have configured
  # certificates for your controller
  allow_insecure = true # optionally use UNIFI_INSECURE env var

  # if you are not configuring the default site, you can change the site
  # site = "foo" or optionally use UNIFI_SITE env var
}
