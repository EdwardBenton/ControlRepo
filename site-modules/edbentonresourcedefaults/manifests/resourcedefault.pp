# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::resourcedefault
class edbentonresourcedefaults::resourcedefault {
file { '/tmp/langroup.txt':
ensure  => file,
content => "The LAN group for this node is lookup('lanl_group')" ,
}
}
