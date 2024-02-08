# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::resourcedefault
class edbentonresourcedefaults::resourcedefault {
  file {
    default:
    mode => '777',
    owner => 'nobody',
  }
  include edbentonresourcedefaults::filetest
}
