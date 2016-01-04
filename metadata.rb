name             'cps-oembed'
maintainer       'Bilal Fazal'
maintainer_email 'bfazal@gannett.com'
license          'Apache 2.0'
description      'Suite of chef/kitchen testing tools'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

# depends 'gdp-base-linux'
depends 'gdp-base-linux', '= 1.0.5'
depends 'uwsgi-application'
depends 'python-deployment'
