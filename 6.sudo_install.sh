#!/bin/bash
. ./colors

color_print "=-=-=-=-=-=-=-=-=-=-="
color_print "Install SUDO module"
color_print "=-=-=-=-=-=-=-=-=-=-="

cat 5.sudo.pp > /etc/puppet/modules/sudo/manifests/init.pp

color_print "=-=-=-=-=-=-=-=-=-=-="
color_print "Check SUDO module"
color_print "=-=-=-=-=-=-=-=-=-=-="

cat /etc/puppet/modules/sudo/manifests/init.pp 

color_print -e "=-=-=-=-=-=-=-=-=-=-=\n"

color_print "=-=-=-=-=-=-=-=-=-=-="
color_print "Create 'sudoers' file"
color_print "=-=-=-=-=-=-=-=-=-=-="

mkdir -p /etc/puppet/modules/sudo/files/etc
cp -v /etc/sudoers /etc/puppet/modules/sudo/files/etc/sudoers
