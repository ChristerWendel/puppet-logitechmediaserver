require 'spec_helper'

describe 'logitechmediaserver', :type => :class do
  let(:title) { 'logitechmediaserver::configure' }
  let(:facts) do
    {:osfamily => 'Debian'}
  end

  it { should contain_file('/usr/share/squeezeboxserver/CPAN/DBD/SQLite.pm')
      .with_ensure('absent')
  }

  it { should contain_file('/usr/share/squeezeboxserver/CPAN/DBI.pm')
      .with_ensure('absent')
  }

  it { should contain_file('/usr/share/squeezeboxserver/CPAN/EV.pm')
      .with_ensure('absent')
  }

  it { should contain_file('/usr/share/squeezeboxserver/CPAN/HTML/Parser.pm')
      .with_ensure('absent')
  }

  it { should contain_file('/usr/share/squeezeboxserver/CPAN/IO/Interface.pm')
      .with_ensure('absent')
  }

  it { should contain_file('/usr/share/squeezeboxserver/CPAN/JSON/XS.pm')
      .with_ensure('absent')
  }

  it { should contain_file('/usr/share/squeezeboxserver/CPAN/Sub/Name.pm')
      .with_ensure('absent')
  }

  it { should contain_file('/usr/share/squeezeboxserver/CPAN/Template.pm')
      .with_ensure('absent')
  }

  it { should contain_file('/usr/share/squeezeboxserver/CPAN/Template/Stash/XS.pm')
      .with_ensure('absent')
  }
end
