#!/bin/bash

# Enable Puppet Master port
firewall-cmd --zone=public --add-port=8140/tcp --permanent
firewall-cmd --reload
