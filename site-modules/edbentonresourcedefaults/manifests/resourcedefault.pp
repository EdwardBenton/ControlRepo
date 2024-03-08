# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::resourcedefault
class edbentonresourcedefaults::resourcedefault {
$lanl_group = lookup($::trusted['certname'] + '::lanl_group', String, 'first', undef)

if $lanl_group == 'core_dev' {
  file { '/tmp/test_file':
    ensure  => file,
    content => 'This server is in the core dev group',
  }
} elsif $lanl_group == 'blackbelt' {
  file { '/tmp/test_file':
    ensure  => file,
    content => 'This server is in the BlackBelt dev group',
  }
} else {
  file { '/tmp/test_file':
    ensure  => file,
    content => 'There is no LAN group set',
  }
}
}
