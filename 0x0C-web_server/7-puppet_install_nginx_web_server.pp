# Puppet manifest to install nginx
package { 'nginx':
	ensure => installed
}

file_name {'aaaaa':
	ensure => 'present',
	path => '/etc/nginx/site-avaibable/default',
	after => 'listen 80 default_server;'
	link => 'rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

file { '/var/www/html/index.html:
	content => 'School";
}
service {'nginx':
	ensure => running,
	require => package['nginx'],
}
