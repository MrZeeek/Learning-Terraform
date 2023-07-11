resource "unifi_port_forward" "MW2_TCP" {
    port_forward_interface  ="wan"
    src_ip                  ="any"
    dst_port                ="3074,3075,27015-27030,27036-27037"
    fwd_ip                  ="192.168.2.10"
    fwd_port                ="3074,3075,27015-27030,27036-27037"
    protocol                ="tcp"
    log                     = true
}

resource "unifi_port_forward" "MW2_UDP" {
    port_forward_interface  ="wan"
    src_ip                  ="any"
    dst_port                ="3074,4380,27000-27036"
    fwd_ip                  ="192.168.2.10"
    fwd_port                ="3074,4380,27000-27036"
    protocol                ="udp"
    log                     = true
}