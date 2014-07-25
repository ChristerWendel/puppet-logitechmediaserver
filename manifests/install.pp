# == Class: logitechmediaserver::install
#
# Installs the logitechmediaserver package, and required perl libraries
class logitechmediaserver::install {
  include cpan

  package { 'logitechmediaserver':
    ensure => $logitechmediaserver::version,
  }

  package { 'libjpeg8-dev':
    ensure => present,
    before => Cpan['Image::Scale'],
  }

  package { 'libpng12-dev':
    ensure => present,
    before => Cpan['Image::Scale'],
  }

  cpan { 'Image::Scale':
    ensure => present,
  }

  cpan { 'Digest::SHA1':
    ensure => present,
  }

  package { 'libaudio-scan-perl':
    ensure => present,
  }

  package { 'libdbd-sqlite3-perl':
    ensure => present,
  }

  package { 'libdbi-perl':
    ensure => present,
  }

  package { 'libev-perl':
    ensure => present,
  }

  package { 'libhtml-parser-perl':
    ensure => present,
  }

  package { 'libjson-xs-perl':
    ensure => present,
  }

  package { 'libsub-name-perl':
    ensure => present,
  }

  package { 'libtemplate-perl':
    ensure => present,
  }

  package { 'libyaml-libyaml-perl':
    ensure => present,
  }

  package { 'libxml-parser-perl':
    ensure => present,
  }
}
