# == Class: logitechmediaserver::configure
#
# Configures logitech media server
class logitechmediaserver::configure {
  file { '/usr/share/squeezeboxserver/CPAN/arch':
    ensure => absent,
    force  => true,
  }

  file { ['/usr/share/squeezeboxserver/CPAN/DBD/SQLite.pm',
          '/usr/share/squeezeboxserver/CPAN/DBI.pm',
          '/usr/share/squeezeboxserver/CPAN/EV.pm',
          '/usr/share/squeezeboxserver/CPAN/HTML/Parser.pm',
          '/usr/share/squeezeboxserver/CPAN/IO/Interface.pm',
          '/usr/share/squeezeboxserver/CPAN/JSON/XS.pm',
          '/usr/share/squeezeboxserver/CPAN/Sub/Name.pm',
          '/usr/share/squeezeboxserver/CPAN/Template.pm',
          '/usr/share/squeezeboxserver/CPAN/Template/Stash/XS.pm']:
            ensure => absent,
  }
}
