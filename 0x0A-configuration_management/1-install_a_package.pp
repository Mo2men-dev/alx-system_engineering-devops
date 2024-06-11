#install a flask from pip3
exec { 'install flask':
  command =>  'pip3 install flask==2.1.0 werkzeug==2.1.1',
  path    =>  '/usr/bin/',
  unless  =>  'pip3 list | grep flask',
}
