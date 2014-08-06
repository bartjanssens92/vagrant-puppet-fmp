# This file was outgenerated on 04/06/14 by makeNew
node 'fmp01' {

  # Place puppet stuff here

  $soft=['rpm-build','ruby-devel','yum-downloadonly']

  # Adding epel repo
  yumrepo { 'epel':
    name       => 'epel',
    descr      => 'epel',
    mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=x86_64',
    enabled    => 1,
    gpgcheck   => 0,
  }

# Add the inuits repos for looking for packages
# Dont forget the ssh tunnel
#
#   Yumrepo{
#     gpgcheck => '0',
#     enabled  => '1',
#   }
#   
#   yumrepo{'inuits':
#     descr   => 'CentOS-6 - Inuits',
#     baseurl => 'http://pulp2.internal.inuits.eu/pulp/repos/pub/inuits/$releasever/$basearch',
#   }
#   
#   yumrepo{'inuits-private':
#     baseurl => 'http://pulp2.internal.inuits.eu/pulp/repos/private/inuits-private',
#     descr   => 'Inuits internal repo',
#   }
  
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
