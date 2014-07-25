# == Class: logitechmediaserver
#
# A module to handle logitech media server
#
# === Parameters
# ["version"]
#   The package version to install
#
# ["enable"]
#   Should the service be enabled during boot time?
#
# ["start"]
#   Should the service be started by Puppet

class logitechmediaserver (
  $version = 'present',
  $enable = true,
  $start = true
  )  {
    class{'logitechmediaserver::install': } ->
    class{'logitechmediaserver::configure': } ~>
    class{'logitechmediaserver::service': } ->
    Class['logitechmediaserver']
  }
