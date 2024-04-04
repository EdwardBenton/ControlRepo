Facter.add('dnfavailable') do
  confine :osfamily => 'RedHat'
  setcode do
    dnf_path = Facter::Core::Execution.which('dnf')
    dnf_path.nil? ? false : true
  end
end