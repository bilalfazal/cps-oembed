override['python-deployment']['application']['name'] = 'appserv-oembed'
override['python-deployment']['application']['settings'] = 'appserv_oembed.settings'
override['python-deployment']['application']['version'] = 'latest'
override['python-deployment']['application']['framework'] = 'django'

normal['datadog']['api_key'] = '8811f4162b1cc39f60b0a297b88fedfa'

override['python-deployment']['repository'] = 'http://pypi.awsdev.usatoday.com'

override['appdynamics']['tier'] = 'appserv-oembed'
override['appdynamics']['python_agent']['version'] = '4.1.5.0'

override['uwsgi']['version'] = '2.0.8'
override['uwsgi']['dogstatsd'] = true
override['uwsgi']['pip_options'] = '--index=https://pypi.gannettdigital.com/simple/'
