# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::filetest
class edbentonresourcedefaults::filetest {
$blockdevice_sda_size_type = type($::blockdevice_sda_size)
notice("The data type of blockdevice_sda_size is: ${blockdevice_sda_size_type}")
}
