node 'puppet.exabig.com' {

  include role::noc

#  # Configure puppetdb and its underlying database
#  class { 'puppetdb': }
#  # Configure the Puppet master to use puppetdb
#  class { 'puppetdb::master::config': }

#  class { 'puppetdb::database::postgresql':
#    manage_firewall => false,
#  }
}

node 'db01.exabig.com' {
  notify { "Node db01.exabigcom is accessible...": }
}

node default {
  fail("The node with the fqdn '${::fqdn}' is not defined in the puppet repository")
}
