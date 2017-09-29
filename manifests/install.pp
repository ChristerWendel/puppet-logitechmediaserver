# == Class: logitechmediaserver::install
#
# Installs the logitechmediaserver package, and required perl libraries
class logitechmediaserver::install {
  package { 'logitechmediaserver':
    ensure => $logitechmediaserver::version,
  }
}
