#config variables - change to suit your requirements
default['chef_scala_ephox']['app_user'] = 'java_app'
default['chef_scala_ephox']['app_group'] = 'java_app'
default['chef_scala_ephox']['app_port'] = 8009

# disable root login and password based auth for ssh
default['openssh']['server']['permit_root_login'] = 'no'
default['openssh']['server']['password_authentication'] = 'no'

# enables ssh on firewall
default['firewall']['allow_ssh'] = true

# select java version to install
override[:java][:openjdk_packages] = [
  "openjdk-7-jdk", "openjdk-7-jre-headless"
  ]

#fail2ban setup hash
default['fail2ban']['services'] = {
'ssh' => {
      "enabled" => "true",
      "port" => "ssh",
      "filter" => "sshd",
      "logpath" => node['fail2ban']['auth_log'],
      "maxretry" => "6"
   }
 }
