class dnsmasq {
	package { "dnsmasq":
		ensure => installed,
	}

	service { "dnsmasq":
		ensure => running,
		enable => true,
	}
}

class dnsmasq::default {
	file { "/etc/dnsmasq.conf":
		ensure => present,
		owner => root,
		group => root,
		mode => 0644,
		source => "puppet:///config/dnsmasq.conf",
		notify => Service["dnsmasq"],
	}
}

class dnsmasq::centos-server {
	file { "/etc/dnsmasq.conf":
		ensure => present,
		owner => root,
		group => root,
		mode => 0644,
		source => "puppet:///config/dnsmasq.conf::centos-server",
		notify => Service["dnsmasq"],
	}
}
