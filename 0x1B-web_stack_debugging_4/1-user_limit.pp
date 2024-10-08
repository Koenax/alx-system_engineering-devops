# Reconfigure the OS for 'holberton' to login and open a file without any error message

# Increase hard file limit for holberton user
exec { 'increase-hard-file-limit-holberton-user':
  command     => 'sed -i "/holberton hard/s/4/50000/" /etc/security/limits.conf',
  path        => '/usr/local/bin/:/bin/',
  refreshonly => true,
}

# Increase soft file limit for holberton user
exec { 'increase-soft-file-limit-for-holberton-user':
  command     => 'sed -i "/holberton soft/s/5/50000/" /etc/security/limits.conf',
  path        => '/usr/local/bin/:/bin/',
  refreshonly => true,
}

