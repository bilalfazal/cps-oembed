# encoding: utf-8
require 'chefspec'
require 'spec_helper'
require 'fauxhai'

describe 'cps-oembed::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new }

  before do
    stub_data_bag_item('users', 'fhanson').and_return( '...' )
    stub_data_bag_item('users', 'akemner').and_return( '...' )
    stub_data_bag_item('users', 'jneves').and_return( '...' )
    stub_data_bag_item('users', 'blieberman').and_return( '...' )
    stub_data_bag_item('users', 'rgindes').and_return( '...' )
    stub_data_bag_item('users', 'kvincent').and_return( '...' )
    stub_data_bag_item('users', 'jcrawford').and_return( '...' )
    stub_data_bag_item('users', 'nessus').and_return( '...' )
    stub_command("which sudo").and_return(true)
    stub_command("which nginx").and_return(true)
    stub_command("rpm -q datadog-agent-base").and_return(true)
  end

  it 'includes the `uwsgi-application` recipe' do
    chef_run.converge(described_recipe)
    expect(chef_run).to include_recipe('uwsgi-application')
  end

  # check for the uwsgi-application dependencies
  recipes = ['chef-client::config', 'sysctl::apply', 'firewall::default', 'datadog::dd-handler', 'nginx', 'nginx::http_stub_status_module', 'python', 'uwsgi', 'git', 's3cmd', 'splunk', 'datadog::dd-agent', 'datadog::nginx', 'datadog::process', 'python-deployment::config-app']

  for recipe in recipes
    it "includes the recipe #{recipe}" do
      chef_run.converge(described_recipe)
      expect(chef_run).to include_recipe(recipe)
    end
  end

  it 'includes the `python-deployment` recipe' do
    chef_run.converge(described_recipe)
    expect(chef_run).to include_recipe('python-deployment')
  end

  it 'converges successfully' do
    expect { :chef_run }.to_not raise_error
  end
end
