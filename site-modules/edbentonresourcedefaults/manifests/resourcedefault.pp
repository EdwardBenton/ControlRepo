# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::resourcedefault
class edbentonresourcedefaults::resourcedefault {
# epp(<FILE REFERENCE>, [<PARAMETER HASH>])
$myusers = {
  'nick' => {
    uid    => lookup('nick_uid', Integer, "first", 1),
    gid    => 'allstaff',
    groups => ['developers', 'operations', 'release'],
  },
  'dan'  => {
    uid    => lookup('dan_uid', Integer, "first", 1),
    gid    => 'allstaff',
    groups => ['developers', 'prosvc', 'release',],
  },
}
file { '/tmp/userfile.txt':
  ensure  => file,
  content => $myusers,
}

}
