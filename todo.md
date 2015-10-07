###Vagrant
setup vagrant deploy
set hostname
disable password based auth
disable root login
add ssh keys
setup one time file copy for provided files and chef cookbook

###Install Chef DK
use script to install chef dev kit
run chef locally to apply cookbook

###Chef Tasks
setup firewall for only 22 and 8009
setup app server for scala app
set app server to start on reboot
setup testing for the 3 provided API endpoints
setup endpoints for monitoring

### Issue
If VM reboots vagrant directory does not relink
