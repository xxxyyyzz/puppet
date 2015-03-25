#!/bin/bash

. ./colors

# Checking for command line argument
if [ "${1}" == "" ]
then
   color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
   color_print "INFO: Generate module directory structure.\nUSAGE: generate_module.sh <prefile>-<module name>"
   color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
   exit 1
fi
MODULE=$1
PREFIX="propuppet"

color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
color_print "CMD: puppet module generate ${PREFIX}-${MODULE}"
color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
puppet module generate ${PREFIX}-${MODULE}

color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
color_print "CMD: mv -v  ${PREFIX}-${MODULE} /etc/puppet/modules"
color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
mv -v ${PREFIX}-${MODULE} /etc/puppet/modules

