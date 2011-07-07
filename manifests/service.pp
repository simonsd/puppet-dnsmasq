	service { "dnsmasq":
		ensure => running,
		enable => true,
	}
}
