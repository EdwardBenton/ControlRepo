# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::addusertest
class edbentonresourcedefaults::addusertest {
  $siteadmin = 'bob'
  $siteadminpass = '$6$bKs36oycd82z9WnH$dzBKz7OyE/5z0WfoPdQLveAfL9YsLCkgmM9GEAI50kDHHv4AM0ASXavt0DxCLC.yOq44RpKSpxUeAIv66HeWg0'

  user { $siteadmin:
    ensure   => present,
    password => $siteadminpass,
  }

}
  notice('String')
  exec { 'echo_string':
  command => 'echo "String3"',
}
