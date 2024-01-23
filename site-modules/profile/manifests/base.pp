# The base profile should include component modules that will be on all nodes
class profile::base {
if $data_option == 1 {
  include security_fixes::cipher_settings
}
}
