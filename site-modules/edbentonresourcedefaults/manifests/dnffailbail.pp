# @summary A short summary of the purpose of this class
#
# A description of what this class does
#dnf module list -d 0 -e 1
# @example
#   include edbentonResourceDefaults::dnffailbail
class edbentonresourcedefaults::dnffailbail {
 exec { 'check_and_run_dnf':
  command   => '/usr/bin/dnf module list -d 0 -e 1',
  logoutput => true,
  path      => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin',
  onlyif    => 'which dnf',
  notify    => Notify['dnf_failure_notification'],
}

notify { 'dnf_failure_notification':
  message  => 'DNF failed on this node!',
  withpath => false,
  loglevel => 'err',
}
}
