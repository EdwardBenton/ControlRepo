Facter.add('aptavailable') do
    confine :osfamily => 'Debian'
    setcode do
      apt_path = Facter::Core::Execution.which('apt')
      if apt_path.nil?
        false
      else
        apt_config_check = Facter::Core::Execution.execute('apt check', on_fail: false)
        apt_config_check.strip.empty? ? true : false
      end
    end
  end
  