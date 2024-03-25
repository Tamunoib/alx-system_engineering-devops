#!/usr/bin/env bash
# Using puppet to connect without password

file { '/etc/ssh/ssh_config':
  ensure => present,
}

file_line { 'Turn off passwd auth':
	path => '/etc/ssh/ssh_config',
	line => 'PasswordAutntication no',
	match => '^#PasswordAuthentication',
}

file_line { 'Declare Identity file':
	path => '/etc/ssh/ssh_config',
	line => 'identityFile ~/.ssh/school',
	match => '^#IdentityFile',
}
