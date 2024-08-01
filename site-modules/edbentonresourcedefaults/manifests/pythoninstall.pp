# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::pythoninstall
class edbentonresourcedefaults::pythoninstall {
  package { 'python':
  ensure => 'latest',
}
}
