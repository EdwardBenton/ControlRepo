Facter.add('yumavailable') do
    confine :osfamily => 'RedHat'
    setcode do
      yum_path = Facter::Core::Execution.which('yum')
      if yum_path.nil?
        false
      else
        yum_config_check = Facter::Core::Execution.execute('yum check', on_fail: false)
        yum_config_check.strip.empty? ? true : false
      end
    end
  end
  