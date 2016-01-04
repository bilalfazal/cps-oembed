require 'serverspec'
require_relative 'helpers'

set :backend, :exec
set :path, '/sbin:/usr/local/sbin:/usr/sbin:$PATH'
