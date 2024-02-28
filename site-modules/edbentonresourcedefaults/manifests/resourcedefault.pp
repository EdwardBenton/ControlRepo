# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::resourcedefault
class edbentonresourcedefaults::resourcedefault {
# epp(<FILE REFERENCE>, [<PARAMETER HASH>])
/*$myusers = {
  'nick' => {
    uid    => lookup('nick_uid'),
    gid    => 'allstaff',
    groups => ['developers', 'operations', 'release'],
  },
  'dan'  => {
    uid    => lookup('dan_uid'),
    gid    => 'allstaff',
    groups => ['developers', 'prosvc', 'release',],
  },
}

Struct[
  {
    passwd_ => Sensitive[String[1]],
    user_epp => String
}
]
file { '/tmp/userfile.txt':
ensure  => file,
content => epp('edbentonresourcedefaults/filetemplate.epp', $xml_params_epp),
}
*/
}
