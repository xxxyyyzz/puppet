#!/bin/bash

. ./colors

color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
color_print "Listing puppet certificates"
color_print "=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo  -e "CMD: puppet cert list --all\n"
puppet cert list --all
