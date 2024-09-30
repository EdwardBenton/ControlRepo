# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonsetdefault::default
class edbentonsetdefault::default {
$my_ip = $::ipaddress
notify {"hello world $my_ip":}
}
