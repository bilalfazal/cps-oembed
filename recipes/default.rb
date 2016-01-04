#
# Cookbook Name:: cps-oembed
# Recipe:: default
#
# Copyright 2015, Gannett
#
# All rights reserved - Do Not Redistribute

include_recipe 'gdp-base-linux'
include_recipe 'uwsgi-application'
include_recipe 'python-deployment'
