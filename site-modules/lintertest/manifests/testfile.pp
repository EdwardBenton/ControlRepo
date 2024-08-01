# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include lintertest::testfile
class lintertest::testfile {
  file { '/tmp/testfile':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }
}
