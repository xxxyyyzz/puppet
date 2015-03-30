#!/bin/bash

if [ "${1}" ==  ""]
then
   echo -e "USAGE: 10.git_config.sh <username>"
   exit 1
fi
USER=${1}

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo "Initial git configuration"
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-="

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo -e "CMD: su ${USER} -c 'git config --global user.name \"${USER}\"'"
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
su ${USER} -c 'git config --global user.name "${USER}"'

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo "CMD: su nlambev -c 'git config --global user.email \"${USER}@localhost\"'"
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
su ${USER} -c 'git config --global user.email "${USER}@localhost"'

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo "CMD: su ${USER} -c 'git config --global color.ui auto'"
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
su ${USER} -c 'git config --global color.ui auto'

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo "CMD: cd /etc/puppet/modules"
cd /etc/puppet/modules
echo "CMD: git init"
git init
echo "CMD: git add *"
git add *
echo "CMD: git status"
git status
echo "CMD: git commit -am 'Initial commit.'"
git commit -am 'Initial commit'
echo "CMD: git log -u"
git log -u
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="

