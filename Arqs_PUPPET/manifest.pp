
$instalar = ["figlet","vim"]
$remover = ["ccze","htop"]

service { 'cron':
  ensure => 'stopped',
  enable => 'false',
}


package { $instalar:
	ensure => present,
}

package { $remover:
	ensure => absent,
}

exec { "memoria_free":
	command => "/usr/bin/free -h > /root/memfree"
}

file { "/tmp/memfree":
	source => "/root/memfree",
	ensure => present,
}
