# @summary A short summary of the purpose of this class
#
# A description of what this class does
#dnf module list -d 0 -e 1
# @example
#   include edbentonResourceDefaults::dnffailbail
class edbentonResourceDefaults::dnffailbail {
  exec { 'run_dnf':
  command     => 'dnf module list -d 0 -e 1',
  logoutput   => true,
  refreshonly => true,
  onlyif      => 'which dnf',
  notify      => Notify['dnf_failure_notification'],
}

notify { 'dnf_failure_notification':
  message => 'DNF module list failed on this node!',
  withpath => false,
  loglevel => 'err',
}

}
