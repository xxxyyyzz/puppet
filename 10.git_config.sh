echo "=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo "Initial git configuration"
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-="


echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo -e "CMD: su nlambev -c 'git config --global user.name \"Nikola Lambev\"'"
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
su nlambev -c 'git config --global user.name "Nikola Lambev"'

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo "CMD: su nlambev -c 'git config --global user.email \"nlambev@localhost\"'"
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
su nlambev -c 'git config --global user.email "nlambev@localhost"'

echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
echo "CMD: su nlambev -c 'git config --global color.ui auto'"
echo "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="
su nlambev -c 'git config --global color.ui auto'

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

