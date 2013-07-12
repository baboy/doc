userdel -r git
rm -rf /home/git
useradd -s /bin/sh -c 'git version control' -d /home/git git
mkdir /home/git
chown -R git:git /home/git
sudo -H -u git gitosis-init < /home/baboy/zyh_pro.pub
chmod 755 /home/git/repositories/gitosis-admin.git/hooks/post-update
