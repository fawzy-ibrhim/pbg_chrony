#Manage Chrony
class pbg_chrony {
  
  ensure_packages(['chrony'])
  
  file { '/etc/chrony.conf':
    ensure  => present,
    source  => 'puppet:///modules/pbg_chrony/chrony.conf',
    notify  => Service['chrony'],
    require => Package['chrony'],
  }

  if $facts['os']['family'] == 'RedHat' {
    service { 'chrony':
      ensure => running,
      enable => true,
      name   => 'chronyd',
    }
  } else {
    service { 'chrony':
      ensure => running,
      enable => true,
      name   => 'chrony',
    }
  }

}
