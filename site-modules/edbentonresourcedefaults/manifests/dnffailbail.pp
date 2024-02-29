# @summary A short summary of the purpose of this class
#
# A description of what this class does
#dnf module list -d 0 -e 1
# @example
#   include edbentonResourceDefaults::dnffailbail
class edbentonResourceDefaults::dnffailbail {
 exec { 'check_and_run_dnf_update':
  command     => '/usr/bin/dnf module list -d 0 -e 1',
  logoutput   => true,
  refreshonly => true,
  onlyif      => 'which dnf > /dev/null 2>&1',
  notify      => Notify['dnf_failure_notification'],
}

notify { 'dnf_failure_notification':
  message  => 'DNF update failed on this node!',
  withpath => false,
  loglevel => 'err',
}
}
