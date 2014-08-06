# This file was outgenerated on 04/06/14 by makeNew
node 'fmp01' {

  # Place puppet stuff here

  $soft=['rpm-build','ruby-devel']

  # Adding epel repo
  yumrepo { 'epel':
    name       => 'epel',
    descr      => 'epel',
    mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=x86_64',
    enabled    => 1,
    gpgcheck   => 0,
  }
  
  package { $soft:
    ensure   => 'present',
    require  => Yumrepo['epel'],
  }

  # Get the fpm gem
  exec { 'fpm-gem':
    command => '/usr/bin/gem install fpm',
    require => Package['ruby-devel'],
    creates => '/usr/lib/ruby/gems/1.8/doc/fpm-1.1.0/rdoc/index.html'
  }
}
