require 'spec_helper'

describe 'logitechmediaserver', :type => :class do
  let(:title) { 'logitechmediaserver::install' }
  let(:facts) do
    {:osfamily => 'Debian'}
  end

  context 'with default parameters' do
    it { should contain_package('logitechmediaserver')
        .with_ensure('present')
    }
  end

  context 'version => present' do
    let(:params) { {:version => 'present'} }

    it { should contain_package('logitechmediaserver')
        .with_ensure('present')
    }
  end

  context 'version => latest' do
    let(:params) { {:version => 'latest'} }

    it { should contain_package('logitechmediaserver')
        .with_ensure('latest')
    }
  end
end
