# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::addusertest
class edbentonresourcedefaults::addusertest {
$siteadmin = "Michael"
$siteadminpass = "$1$NaClLOLZ$McLaejqmoq0lg4aKeXLU91"

user { $siteadmin:
  ensure  => present,
  password => $siteadminpass,
}
}
