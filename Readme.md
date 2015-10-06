# Devops exersize

Hello!

## Instructions

This repository contains a binary for a simple web app written using scala.

You need to do the following:

1. Fork this repository. 

2. Install vagrant if you do not already have it available: https://www.vagrantup.com/

3. Using a provisioning system of your choice do the following: This
   is where you show us what you can do:

    1. Secure the machine using industry best practice security. Port 8009
    is required for the application server to be accessible. Assume
    that this server will be a publically accessible server that runs
    inside a cloud provider. SSH should be properly secured.
    2. Set the hostname of the machine to something creative. 
    3. Run the application in the application directory automatically
       on machine boot. 

4. Requests to the following apis will give results when run on the
local network.
    1. http://hostname:8009/ => Working!
    2. http://hostname:8009/latest/meta-data/public-ipv4 => IP address of
    the machine
    3. http://hostname:8009/latest/meta-data/public-hostname => hostname of
    the machine 


5. All provisioning scripts should be placed into the scripts
   directory

6. Issue a pull request when you are done, so we can look at the solution.
