sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -P OUTPUT DROP
sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A INPUT -i eth0 -p tcp -m tcp --dport 2222 -j ACCEPT
sudo iptables -A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT
sudo iptables -A FORWARD -s 172.20.102.0/24 -d 192.168.102.0/24 -p icmp -j ACCEPT
sudo iptables -A FORWARD -s 192.168.102.0/24 -d 172.20.102.0/24 -p icmp -j ACCEPT
sudo iptables -A OUTPUT -o lo -j ACCEPT
sudo iptables -A OUTPUT -p icmp -j ACCEPT
sudo iptables -A OUTPUT -o eth0 -p tcp -m tcp --dport 2222 -j ACCEPT
sudo iptables -A OUTPUT -o eth0 -p tcp -m tcp --sport 2222 -j ACCEPT
sudo iptables -A OUTPUT -p udp -m udp --dport 53 -j ACCEPT
sudo iptables -A OUTPUT -p tcp -m tcp --dport 80 -j ACCEPT
sudo iptables -A OUTPUT -p tcp -m tcp --dport 443 -j ACCEPT

sudo iptables --table nat -A POSTROUTING -o eth0 -j MASQUERADE


