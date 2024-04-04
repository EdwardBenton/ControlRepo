Facter.add('dnfavailable') do
  confine :osfamily => 'RedHat'
  setcode do
    dnf_path = Facter::Core::Execution.which('dnf')
    if dnf_path.nil?
      false
    else
      dnf_config_check = Facter::Core::Execution.execute('dnf check', on_fail: false)
      dnf_config_check.strip.empty? ? true : false
    end
  end
end
