Facter.add('dnfavailable') do
  confine :osfamily => 'RedHat'
  setcode do
    Facter::Core::Execution.execute('dnf --version', on_fail: false)
    $?.exitstatus == 0 ? true : false
  end
end