#create file
file { '/tmp/school':
	mode	=> '0744',
	owner	=> 'www-data'
	group	=> 'www-data'
	conten	 => 'I love Puppet'
