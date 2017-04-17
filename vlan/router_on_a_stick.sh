# switch
CatA(config) interface fastEthernet 0/1
CatA(config-if) switchport trunk encapsulation dot1q
CatA(config-if) switchport mode trunk
CatA(config) interface fastEthernet 0/2
CatA(config-if) switchport access vlan 2
CatA(config-if) switchport mode access
CatA(config-if) interface fastEthernet 0/3
CatA(config-if) switchport access vlan 3
CatA(config-if) switchport mode access


# router
RA(config)interface fastEthernet 0/0
RA(config-if)no shutdown
RA(config-if)interface fastEthernet 0/0.10
RA(config-subif)encapsulation dot1Q 10
RA(config-subif)ip address 100.1.10.200 255.255.255.0
RA(config-subif)interface fastEthernet 0/0.20
RA(config-subif)encapsulation dot1Q 20
RA(config-subif)ip address 100.1.20.200 255.255.255.0
