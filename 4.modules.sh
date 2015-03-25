#!/bin/bash

. ./colors

color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
color_print " Module SUDO"
color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n"

color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
color_print " Creating directory structure"
color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
set -x
mkdir -p /etc/puppet/modules/sudo/{files,manifests,templates}
set +x
color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
color_print " Creating 'init.pp' file"
color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
set -x
touch /etc/puppet/modules/sudo/manifests/init.pp
set +x
