Facter.add('dnfavailable') do
    confine :kernel => 'Linux'
    setcode do
      result = Facter::Core::Execution.execute('dnf --version > /dev/null 2>&1', on_fail: false)
      result ? 'true' : 'false'
    end
  end