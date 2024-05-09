# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::filetest
class edbentonresourcedefaults::filetest {
file { '/etc/test.txt':
  ensure  => present,
  content => "This is a notice",
} -> 
notify { 'File is present':
  message => 'The file /etc/test.txt has been created',
} -> 
file { '/etc/test.txt':
  ensure => absent,
}

}
