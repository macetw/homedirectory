
package {'vim-enhanced': ensure => present }
package {'httpd':        ensure => present }
package {'mysqld':       ensure => present }
package {'git':          ensure => present }
package {'subversion':   ensure => present }
package {'ntpd':         ensure => present }
package {'gcc-c++':      ensure => present }

user {'macetw':
  ensure           => 'present',
  comment          => 'Tyler Winter Mace',
  password_max_age => '-1',
  password_min_age => '-1',
  shell            => '/bin/tcsh',
  before => File['/home/macetw/.vimrc']
}

file {'vimrc':
  ensure => file,
  path => '/home/macetw/.vimrc',
  mode => 600,
  source => 'vimrc'
}

  
