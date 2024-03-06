## site.pp ##

# This file (./manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
# https://puppet.com/docs/puppet/latest/dirs_manifest.html
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition if you want to use it.

## Active Configurations ##

# Disable filebucket by default for all File resources:
# https://github.com/puppetlabs/docs-archive/blob/master/pe/2015.3/release_notes.markdown#filebucket-resource-no-longer-created-by-default
File { backup => false }

## Node Definitions ##

# The default node definition matches any node lacking a more specific node
# definition. If there are no other node definitions in this file, classes
# and resources declared in the default node definition will be included in
# every node's catalog.
#
# Note that node definitions in this file are merged with node data from the
# Puppet Enterprise console and External Node Classifiers (ENC's).
#
# For more on node definitions, see: https://puppet.com/docs/puppet/latest/lang_node_definitions.html
node default {
  # This is where you can declare classes for all nodes.
  # Example:
  #   class { 'my_class': }
#lookup('classes', {merge => unique}).include
  include edbentonresourcedefaults::resourcedefault
/* $agent_settings = [
{ section => 'main', setting => 'statettl', value => $statettl },
{ section => 'main', setting => 'runtimeout', value => '0' },
{ section => 'agent', setting => 'splay', value => 'true' },
{ section => 'main', setting => 'exclude_unchanged_resources', value => 'true' },
{ section => 'main', setting => 'usecacheonfailure', value => 'false' },
{ section => 'agent', setting => 'crl_refresh_interval', value => '1d' },
{ section => 'main', setting => 'environment', value => $server_facts['environment'] },
{ section => 'main', setting => 'graph', value => 'true' },
{ section => 'main', setting => 'http_read_timeout', value => $http_read_timeout },
]

class { 'puppet_agent':
config => $agent_settings,
notify => Service['puppet'],
}
}
*/
file { '/tmp/userfile.txt':
ensure  => file,
content => $server_facts['environment'],
}
