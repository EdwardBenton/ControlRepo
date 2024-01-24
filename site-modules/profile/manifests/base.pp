# The base profile should include component modules that will be on all nodes
class profile::base {
  file { 'c:/windows/temp/base_pp_did_this.sh':
    ensure => file,
    content => 'Added from base.pp',
}
include security_fixes::conditional_security_fixes
  }
