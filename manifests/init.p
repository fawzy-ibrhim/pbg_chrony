include stdlib
#Manage Chrony
class pbg_chrony {
  
  ensure_packages(['chrony'])

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
