require_relative 'spec_helper'

describe service('iptables') do
  it { should be_enabled }
  it { should be_running }
end

describe package('python') do
  it { should be_installed }
end

describe package('git') do
  it { should be_installed }
end

describe file('/etc/uwsgi/appconf/appserv-oembed') do
  it { should exist }
  its(:content) { should match 'appserv_oembed.settings' }
  its(:content) { should match 'django' }
end


describe package('nginx') do
  it { should be_installed }
end
