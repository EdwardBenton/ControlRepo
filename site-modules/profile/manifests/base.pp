# The base profile should include component modules that will be on all nodes
class profile::base (
Boolean $data_option
) {
if $data_option == true {
  include security_fixes::cipher_settings
}
  }
