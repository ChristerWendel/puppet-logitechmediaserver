# == Class: logitechmediaserver::configure
#
# Configures logitech media server
class logitechmediaserver::configure {
  @file { '/etc/logstash/conf.d/logitechmediaserver.conf':
    ensure => present,
    owner  => 'logstash',
    group  => 'logstash',
    mode   => '0644',
    source => 'puppet:///modules/logitechmediaserver/logstash.conf',
    tag    => [logstash],
  }
}
