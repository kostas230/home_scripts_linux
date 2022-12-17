#!/bin/sh
echo en_US.UTF-8 >> /etc/locale.gen 
echo el_GR.UTF-8 >> /etc/locale.gen
echo LANG=en_US.UTF-8 >> /etc/locale.conf

ln -sf /usr/share/zoneinfo/Europe/London /etc/localtime
hwclock --systohc --utc

echo kostasPC > /etc/hostname 
echo "127.0.0.1		localhost" >> /etc/hosts
echo "::1		localhost" >> /etc/hosts 
echo "127.0.1.1		kostasPC" >> /etc/hosts
