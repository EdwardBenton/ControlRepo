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
}
#$rnd_pwd2 = seeded_rand_string(12, $facts['networking']['hostname'])
