Facter.add('chocolateyavailable') do
    confine :osfamily => 'windows'
    setcode do
      chocolatey_path = Facter::Core::Execution.which('choco')
      !chocolatey_path.nil?
    end
  end
  