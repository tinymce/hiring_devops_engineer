default['chef_scala_ephox']['app_user'] = 'java_app'
default['chef_scala_ephox']['app_group'] = 'java_app'
default['chef_scala_ephox']['app_port'] = 8009
default['openssh']['server']['permit_root_login'] = 'no'
default['openssh']['server']['password_authentication'] = 'no'
default['firewall']['allow_ssh'] = true

override[:java][:openjdk_packages] = [
  "openjdk-7-jdk", "openjdk-7-jre-headless"
  ]
