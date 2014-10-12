# == Class: logitechmediaserver::service
#
# Controls the logitechmediaserver service
class logitechmediaserver::service {
  $ensure = $logitechmediaserver::start ? {true => running, default => stopped}

  service { 'logitechmediaserver':
    ensure    => $ensure,
    enable    => $logitechmediaserver::enable,
    hasstatus => false,
    pattern   => 'squeezeboxserver',
  }
}
