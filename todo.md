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
setup endpoints for monitoring

### Issues
If VM reboots vagrant directory does not relink
(sort of fixed, vm doesn't rely on shared storage anymore)
