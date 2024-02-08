# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::resourcedefault
class edbentonresourcedefaults::resourcedefault {
  File {
    default:
    mode => '777',
    owner => 'nobody',
  }
class edbentonresourcedefaults::filetest {
  file { '/tmp/example_file':
    ensure => file,
    content => 'Testing is an enjoyable activity.',
  }
}
}
