# == Class: logitechmediaserver::configure
#
# Configures logitech media server
class logitechmediaserver::configure {
  file { '/usr/share/squeezeboxserver/CPAN/arch':
    ensure => absent,
    force  => true,
  }

  file { '/usr/share/squeezeboxserver/CPAN/DBD/SQLite.pm':
    ensure => absent,
  }

  file { '/usr/share/squeezeboxserver/CPAN/DBI.pm':
    ensure => absent,
  }

  file { '/usr/share/squeezeboxserver/CPAN/EV.pm':
    ensure => absent,
  }

  file { '/usr/share/squeezeboxserver/CPAN/HTML/Parser.pm':
    ensure => absent,
  }

  file { '/usr/share/squeezeboxserver/CPAN/JSON/XS.pm':
    ensure => absent,
  }

  file { '/usr/share/squeezeboxserver/CPAN/Sub/Name.pm':
    ensure => absent,
  }

  file { '/usr/share/squeezeboxserver/CPAN/Template.pm':
    ensure => absent,
  }

  file { '/usr/share/squeezeboxserver/CPAN/Template/Stash/XS.pm':
    ensure => absent,
  }
}
