#!/bin/bash 

case $1 in 
a) 
sudo networksetup -setdhcp "Wi-Fi" 
sudo networksetup -setdnsservers "Wi-Fi"  empty
sudo flashdns
;; 
1) 
#设置Wi-Fi静态ip  
echo "Setting IP = 192.168.3.178 255.255.255.0 192.168.3.1"
sudo networksetup -setmanual "Wi-Fi" 192.168.3.178 255.255.255.0 192.168.3.1
echo "Setting DNS = 223.5.5.5"
sudo networksetup -setdnsservers "Wi-Fi" 223.5.5.5
echo "flashdns"
sudo flashdns
;; 

10) 
#设置Wi-Fi静态ip  
echo "Setting IP = 192.168.3.178 255.255.255.0 192.168.3.10"
sudo networksetup -setmanual "Wi-Fi" 192.168.3.178 255.255.255.0 192.168.3.10
echo "Setting DNS = 192.168.3.10"
sudo networksetup -setdnsservers "Wi-Fi" 192.168.3.10
echo "flashdns"
sudo flashdns
;; 

38) 
#设置Wi-Fi静态ip  
echo "Setting IP = 192.168.3.178 255.255.255.0 192.168.3.38"
sudo networksetup -setmanual "Wi-Fi" 192.168.3.178 255.255.255.0 192.168.3.38
echo "Setting DNS = 192.168.3.38"
sudo networksetup -setdnsservers "Wi-Fi" 192.168.3.38
echo "flashdns"
sudo flashdns
;; 


*) 
echo “使用a 参数是自动获取，1/10/38是对应路线” 
;; 
esac 

exit 0
