# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::filetest
class edbentonresourcedefaults::filetest {
  file { '/tmp/example_file':
    ensure => file,
    content => 'Some content used by installer',
  }

exec { 'installerstuff':
  path      => $::path,
  command   => 'cat /tmp/example_file',
}

  file { '/tmp/example_file':
    ensure => absent,
  }

}
