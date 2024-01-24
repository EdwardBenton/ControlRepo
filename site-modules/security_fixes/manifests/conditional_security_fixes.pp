# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include security_fixes::conditional_security_fixes
class security_fixes::conditional_security_fixes {
  if $fixes_enabled == 1 {
  include security_fixes::cipher_settings
}
}
