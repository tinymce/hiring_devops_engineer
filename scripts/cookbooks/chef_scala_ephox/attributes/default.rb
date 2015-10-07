default['chef_scala_ephox']['user'] = 'java_app'
default['chef_scala_ephox']['group'] = 'java_app'

override[:java][:openjdk_packages] = [
  "openjdk-7-jdk", "openjdk-7-jre-headless"
  ]
