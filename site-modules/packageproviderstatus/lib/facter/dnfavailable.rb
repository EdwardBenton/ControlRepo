Facter.add('dnfavailable') do
    confine :kernel => 'Linux'
    setcode do
    Facter::Core::Execution.execute('dnf --version > /dev/null 2>&1', on_fail: false)
    end
  end