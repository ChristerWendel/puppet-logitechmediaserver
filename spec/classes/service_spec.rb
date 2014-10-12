require 'spec_helper'

describe 'logitechmediaserver', :type => :class do
  let(:title) { 'logitechmediaserver::service' }
  let(:facts) do
    {:osfamily => 'Debian'}
  end

  context 'with default parameters' do
    it { should contain_service('logitechmediaserver')
        .with_ensure('running')
        .with_enable('true')
        .with_hasstatus('false')
        .with_pattern('squeezeboxserver')
    }
  end

  context 'enable => false' do
    let(:params) { {:enable => 'false'} }

    it { should contain_service('logitechmediaserver')
        .with_ensure('running')
        .with_enable('false')
        .with_hasstatus('false')
        .with_pattern('squeezeboxserver')
    }
  end

  context 'start => false' do
    let(:params) { {:start => 'false'} }

    it { should contain_service('logitechmediaserver')
        .with_ensure('stopped')
        .with_enable('true')
        .with_hasstatus('false')
        .with_pattern('squeezeboxserver')
    }
  end
end
