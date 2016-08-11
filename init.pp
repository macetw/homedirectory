
package {'vim-enhanced': ensure => present }
package {'httpd':        ensure => present }
package {'mysqld':       ensure => present }
package {'git':          ensure => present }
package {'subversion':   ensure => present }
package {'ntpd':         ensure => present }
package {'gcc-c++':      ensure => present }

service {'httpd':
  ensure => running,
  enable => true,
  # subscribe => File['...']
}

user {'macetw':
  ensure           => 'present',
  comment          => 'Tyler Winter Mace',
  password_max_age => '-1',
  password_min_age => '-1',
  # password         => ... grub-crypt --sha-512
  shell            => '/bin/tcsh',
  before => File['/home/macetw/.vimrc'],
  managehome => true
}

file {'vimrc':
  ensure => file,
  path => '/home/macetw/.vimrc',
  mode => 600,
  source => 'vimrc'
  # replace => 'no',
}

file { '/etc/motd':
   ensure => file
   content => 'Count your blessings, not your problems"
}


