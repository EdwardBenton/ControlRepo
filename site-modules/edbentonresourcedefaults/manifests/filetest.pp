# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::filetest
class edbentonresourcedefaults::filetest {
# revert change to check whether deprecate warnings are raised
$randomer = seeded_rand_string(300, 'my_seed')
notify { 'output':
message => $randomer,
}
#$rnd_pwd2 = seeded_rand_string(12, $facts['networking']['hostname'])
if $stdlib_log_deprecations {
  notify { "STDLIB_LOG_DEPRECATIONS is set to ${stdlib_log_deprecations}": }
} else {
  notify { "STDLIB_LOG_DEPRECATIONS is unset": }
}
notify { "structuredname is set to ${structuredname}": }
}
