# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::resourcedefault
class edbentonresourcedefaults::resourcedefault {
# epp(<FILE REFERENCE>, [<PARAMETER HASH>])
file { '/etc/birthday.conf':
  ensure  => file,
  content => epp('edbentonresourcedefaults/filetemplate.epp', {'name' => 'aaron', 'age' => "25"}),
  # Loads /etc/puppetlabs/code/environments/production/modules/ntp/templates/ntp.conf.epp
}
}
