
resource "unifi_network" "Butter_My_Biscuits" {
  name    = "Butter My Biscuits"
  purpose = "corporate"

  subnet       = "192.168.2.0/24"
  vlan_id      = 2
  dhcp_start   = "192.168.2.6"
  dhcp_stop    = "192.168.2.254"
  dhcp_enabled = true
}

resource "unifi_network" "HIoT" {
  name    = "HIoT"
  purpose = "corporate"

  subnet       = "192.168.3.0/24"
  vlan_id      = 3
  dhcp_start   = "192.168.3.6"
  dhcp_stop    = "192.168.3.254"
  dhcp_enabled = true
}

resource "unifi_network" "vlan" {
  name    = "Default"
  purpose = "corporate"

  subnet       = "192.168.1.0/24"
  dhcp_start   = "192.168.1.6"
  dhcp_stop    = "192.168.1.254"
  dhcp_enabled = true
}

resource "unifi_wlan" "Butter_My_Biscuits" {
    name                    = "Butter My Bisciuts"
    passphrase              = "password for wlan"
    security                = "wpapsk"
    fast_roaming_enabled    = true
    multicast_enhance       = true
    bss_transition          = true
    proxy_arp               = true

  # enable WPA2/WPA3 support
  wpa3_support    = true
  wpa3_transition = true
  pmf_mode        = "optional"

  network_id    = 2
  user_group_id = "defualt"
}

resource "unifi_wlan" "HIoT" {
    name                    = "HIoT"
    passphrase              = "password for wlan"
    security                = "wpapsk"
    fast_roaming_enabled    = true
    multicast_enhance       = true
    bss_transition          = true
    uapsd                   = true
    proxy_arp               = true

  # enable WPA2/WPA3 support
  wpa3_support    = false
  wpa3_transition = false
  pmf_mode        = "optional"

  network_id    = 3
  user_group_id = "default"
}

resource "unifi_network" "wan" {
  name    = "Verizon"
  purpose = "wan"

  wan_networkgroup = "WAN"
  wan_type         = "dhcp"
  wan_ip           = "public ip"
}
