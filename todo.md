###Vagrant
~~setup vagrant deploy~~
~~set hostname~~
~~disable password based auth~~
~~disable root login~~
~~add ssh keys~~
~~copy required files from vagrant share to local storage~~

###Chef Tasks
~~setup firewall for only 22 and 8009~~
~~setup app server for scala app~~
~~set app server to start on reboot~~

### firewall
~~determine best solution for industry best practice for this application~~
~~fail2ban~~
~~block inbound except 22 (ssh) & 8009 (application)~~
~~block outbound except 80 and 443 (aptitude)~~
~~implement solution~~

###Things to Investigate
~~setup testing for the 3 provided API endpoints (no supplied way to run with vagrants chef-solo)~~

###Update Readme
~~update readme with basic instructions~~

### Issues
~~If VM reboots vagrant directory does not relink~~
(fixed in vagrant 1.7.4 https://github.com/mitchellh/vagrant/commit/300b9c910954bf0e6beed0888e121473639ef2c8)
