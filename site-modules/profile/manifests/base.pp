# The base profile should include component modules that will be on all nodes
class profile::base {
  include security_fixes::cipher_settings
  file { 'c:/windows/temp/base_pp_did_this.sh':
    ensure => file,
    content => 'Added from base.pp',
}
  }
