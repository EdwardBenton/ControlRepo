# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::filetest
class edbentonresourcedefaults::filetest {
  file { '/tmp/example_file':
    ensure => file,
    content => 'Testing is an enjoyable activity.',
  }
  class edbentonresourcedefaults::filetest {
  file { '/tmp/example_file':
    ensure => file,
    content => 'Testing is an enjoyable activity.',
  }
}

}
