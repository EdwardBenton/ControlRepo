# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::resourcedefault
class edbentonresourcedefaults::resourcedefault {
regisitry::value { 'puppettest':

    key => 'HKLM\SOFTWARE\Puppet Labs\Puppet',
    data => '1',
  }
}
