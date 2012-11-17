#!/usr/bin/env rspec
require 'spec_helper'

describe 'repos::apt::puppetlabs' do

  let(:facts) { {:osfamily => 'Debian', :operatingsystemrelease => '12.10',
    :hardwareisa => 'x86_64', :lsbdistcodename => 'quantal' } }

  describe 'Should contain sources' do
    it { should contain_apt__source('puppetlabs').with(
      'ensure' => 'present',
      'location' => 'http://apt.puppetlabs.com',
      'repos' => 'main dependencies ',
      'key' => '4BD6EC30',
      'key_server' => 'pgp.mit.edu'
    )}
  end

end



