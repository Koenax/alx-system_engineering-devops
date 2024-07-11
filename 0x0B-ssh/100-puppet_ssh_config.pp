#!/usr/bin/env  bash
# making use of puppet to configuration file

file { 'ect/ssh/ssh_config':
	ensure => present

content =>"
	#SSH client configuration
	host *
	IdentityFile ~/.ssh/school
	PasswordAuthentication no

}
