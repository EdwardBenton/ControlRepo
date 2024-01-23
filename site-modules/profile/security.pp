# Security baseline
class profile::security::sec_baseline {
include security_fixes::dll_cwd
include security_fixes::protocol_settings # mitigates protocols by disabling all but TLS1.2
include security_fixes::cipher_settings # sets the .net framework to use strong ciphers
}
