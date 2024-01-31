forge 'https://forge.puppet.com'

# Modules from the Puppet Forge
# Versions should be updated to be the latest at the time you start
mod 'puppetlabs/inifile', '5.0.1'
mod 'puppetlabs/stdlib',  '7.0.1'
mod 'puppetlabs/concat',  '7.0.1'

# Modules from Git
# Examples: https://github.com/puppetlabs/r10k/blob/master/doc/puppetfile.mkd#examples
#mod 'apache',
#  git:    'https://github.com/puppetlabs/puppetlabs-apache',
#  commit: '1b6f89afdde0df7f9433a163d5c4b5328eac5779'

#mod 'apache',
#  git:    'https://github.com/puppetlabs/puppetlabs-apache',
#  branch: 'docs_experiment'
mod 'puppetlabs-chocolatey', '8.0.0'
mod 'puppetlabs-patching_as_code', '1.1.7'
mod 'reidmv-puppet_environment_facts', '1.0.0'
mod 'puppetlabs-registry', '5.0.1'
mod 'puppetlabs-comply', '2.18.1'
pe_r10k::forge_settings:
  authorization_token: 'Bearer 6025cd0c57dab985d4979f9003b18110e916d1602057c47731384f63c17e5a79'
  baseurl: 'https://forgeapi.puppet.com'
puppet_enterprise::master::code_manager::forge_settings:
  authorization_token: 'Bearer 6025cd0c57dab985d4979f9003b18110e916d1602057c47731384f63c17e5a79'