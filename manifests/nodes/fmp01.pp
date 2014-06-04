# This file was outgenerated on 04/06/14 by makeNew
node 'fmp01' {

  # Place puppet stuff here

  # Adding epel repo
  yumrepo { 'epel':
    name       => 'epel',
    descr      => 'epel',
    mirrorlist => 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=x86_64',
    enabled    => 1,
    gpgcheck   => 0,
  }

}
