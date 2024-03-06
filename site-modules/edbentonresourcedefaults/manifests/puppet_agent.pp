# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::puppet_agent
class edbentonresourcedefaults::puppet_agent {
$agent_settings = [
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
file { '/tmp/userfile.txt':
ensure  => file,
content => $agent_settings,
}
}
