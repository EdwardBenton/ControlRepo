plan adhoc::testwarnings (
TargetSpec $targets = "localhost"
) {
apply_prep($targets)
apply($targets) {
$randomer = seeded_rand_string(300, 'my_seed')
notify { 'output':
message => $randomer,
}
}
}
