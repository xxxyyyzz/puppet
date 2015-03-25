#!/bin/bash

. ./colors

# Checking for command line argument
if [ "${1}" == "" ]
then
   color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
   color_print "INFO: Delete certificate for the specfied domain.\nUSAGE: delete_cert.sh <domain name>"
   color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
   exit 1
fi
DOMAIN=$1

color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
color_print "CMD: puppet cert clean ${DOMAIN}"
color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
puppet cert clean ${DOMAIN}
