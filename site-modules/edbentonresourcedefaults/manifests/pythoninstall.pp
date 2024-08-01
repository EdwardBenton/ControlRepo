# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::pythoninstall
class edbentonresourcedefaults::pythoninstall {
python::pip { 'requests' :
  ensure        => 'latest',
  pkgname       => 'requests',
  pip_provider  => 'pip3',
  virtualenv    => '/var/www/project1',
  owner         => 'root',
  timeout       => 1800
}
}
