# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include edbentonResourceDefaults::test_sensitive_data
class edbentonresourcedefaults::test_sensitive_data {
$test_value = example_sensitive_function::should_to_s(Sensitive('test_value'))
notify { "Test value: ${test_value}": }
}
