# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include security_fixes::cipher_settings
class security_fixes::cipher_settings {
# Enable TLS 1.2 for .NET Framework 3.5/4.0/4.5.x applications
registry_key { 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NETFramework\v2.0.50727':
ensure => present,
}
-> registry_value { 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NETFramework\v2.0.50727\SchUseStrongCrypto': # lint:ignore:140chars
ensure => present,
type   => dword,
data   => 1,
}
registry_key { 'HKLM:\SOFTWARE\Microsoft\.NetFramework\v4.0.30319':
ensure => present,
}
-> registry_value { 'HKLM:\SOFTWARE\Microsoft\.NetFramework\v4.0.30319\SchUseStrongCrypto': # lint:ignore:140chars
ensure => present,
type   => dword,
data   => 1,
}
registry_key { 'HKLM:\SYSTEM\CurrentControlSet\Control\Cryptography\Configuration\Local\SSL\00010002':
ensure       => present,
purge_values => true, # used here to be sure that unsecure suites previously on the node are no longer present
}
#sets desired cipher suites. Purge_values says to only use what this list supplies
-> registry::value { 'NCRYPT_SCHANNEL_INTERFACE':
key   => 'HKLM:\SYSTEM\CurrentControlSet\Control\Cryptography\Configuration\Local\SSL\00010002',
value => '(default)',
data  => 'NCRYPT_SCHANNEL_INTERFACE',
}
-> registry_value { 'HKLM:\SYSTEM\CurrentControlSet\Control\Cryptography\Configuration\Local\SSL\00010002\Functions':
ensure => present,
type   => array,
data   => ['TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384','TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256','TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384','TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256'], # lint:ignore:140chars
}
-> registry_value { 'HKLM:\SYSTEM\CurrentControlSet\Control\Cryptography\Configuration\Local\SSL\00010002\EccCurves': # lint:ignore:140chars
ensure => present,
type   => array,
data   => ['secP384r1','secP521r1','secP256r1','secP224r1'],
}
file { 'c:/windows/temp/cert_convert.sh':
    ensure  => file,
    content => 'Test',
}
}
