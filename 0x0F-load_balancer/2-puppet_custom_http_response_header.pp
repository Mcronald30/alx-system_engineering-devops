# Custom HTTP header in a nginx server

# install nginx web server on server
package { 'nginx':
  ensure => installed,
}

# custom Nginx response header (X-Served-By: hostname)
file_line { 'install':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'add_header X-Served-By $hostname;'
}

# start service
service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
