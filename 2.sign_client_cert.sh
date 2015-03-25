#!/bin/bash

if [ "${1}" == "" ]
then
   echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
   echo -e "INFO: Sign certificate for the specfied domain.\nUSAGE: sign_client_cert.sh <domain name>"
   echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
   exit 1
fi
DOMAIN=$1

echo "=-=-=-=-=-=-=-=-=-=-="
echo "List certificate"
echo "=-=-=-=-=-=-=-=-=-=-="

#List the certificate
echo "CMD: puppet cert list ${DOMAIN}"

echo "=-=-=-=-=-=-=-=-=-=-="
echo "Signing the certificate"
echo "=-=-=-=-=-=-=-=-=-=-="
#Sign the certificate
echo "puppet cert sign ${DOMAIN}"
puppet cert sign ${DOMAIN}
