require 'spec_helper'

describe 'logitechmediaserver', :type => :class do
  let(:title) { 'logitechmediaserver::configure' }
  let(:facts) do
    {:osfamily => 'Debian'}
  end

  context 'with default parameters' do
    it { should_not contain_file('/etc/logstash/conf.d/logitechmediaserver.conf')
      .with_ensure('present')
    }
  end

  context 'collect virtual resource' do
    let :pre_condition do
      'File <| tag == logstash |>'
    end

    it { should contain_file('/etc/logstash/conf.d/logitechmediaserver.conf')
      .with_ensure('present')
      .with_owner('logstash')
      .with_group('logstash')
      .with_mode('0644')
      .with_source('puppet:///modules/logitechmediaserver/logstash.conf')
    }
  end
end
