class dnsmasq::config {
	file { "/etc/dnsmasq.conf":
		ensure => present,
		owner => root,
		group => root,
		mode => 0644,
		source => "puppet:///config/dnsmasq.conf",
		notify => Service["dnsmasq"],
	}
}
