# Chef Scala Ephox

### Dependencies
This cookbook depends on

* cookbook 'apt', '~> 2.8.2'
* cookbook 'java', '~> 1.35.0'
* cookbook 'openssh', '~> 1.5.2'
* cookbook 'firewall', '~> 1.5.0'
* cookbook 'fail2ban', '~> 2.3.0'

All of which are included in both the Berksfile and the metadata.rb file at the root of this cookbook.

### Purpose
Deploys the ts-assembly-1.0.0.jar application included in this repository in the `application/` directory.

### Attributes
#### Application
`default['chef_scala_ephox']['app_name']` sets the name of the application

`default['chef_scala_ephox']['app_user']` sets the application user name (system account, non-login)

`default['chef_scala_ephox']['app_group']` sets the application group name

`default['chef_scala_ephox']['app_port']` sets the port the application is being served on and also opens this port in the firewall

#### SSH
`default['openssh']['server']['permit_root_login']` Boolean, sets whether you can login as the root account

`default['openssh']['server']['password_authentication']` Boolean, sets whether you can login with a password instead of an SSH key.

#### Firewall
`default['firewall']['allow_ssh']` Boolean, opens port 22

#### Java Version
`override[:java][:openjdk_packages]` Allows you to specify what java versions to install. `[ "openjdk-7-jdk", "openjdk-7-jre-headless" ]` installs the OpenJDK 7 JRE and JDK.

### Fail2ban
`default['fail2ban']['services']` Allows you to specify services for fail2ban to monitor and banning attributes
