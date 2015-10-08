# Devops exersize

Hello!

## Instructions

This repository contains a binary for a simple web app written using scala.

You need to do the following:

1. Fork this repository. 

2. Install vagrant if you do not already have it available: https://www.vagrantup.com/

3. Using a provisioning system of your choice do the following: This
is where you show us what you can do: Please note to use the provided
Vagrantfile as the base file, and dont create a new one

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

-----------------------------------------------------------------------------

HI Ephox,

This is up and running. Just a few notes:

- I've forked and modified an existing github repo which attempts to implement the CIS benchmarks using ansible. The ansible-rhel-cis role still needs quite a bit of cleaning up - there's a lot of RHEL 6 bits and some of the CIS tests and mitigations have been implemented incorrectly. It's definitely not production ready but the important parts are working.
- For item 4, you'll need to use the IP (192.168.0.2) from the Vagrant host rather than the hostname because (unless you want to make some DNS or hosts file changes around the office)

There's a couple of other security configurations that would be worthwhile (in addition to the ansible-rhel-cis role cleanup), such as:
- SSH key authentication would be preferable and SSH should be restricted by IP
- The Aide database should be on read only storage
- Logs should go to a seperate log server

Enjoy the weekend!
