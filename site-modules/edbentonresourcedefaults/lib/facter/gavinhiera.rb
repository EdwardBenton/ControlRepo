Facter.add('GavinHiera') do
    setcode do
      Facter::Core::Execution.execute('puppet lookup edbentonresourcedefaults::dan_uid --environment production')
    end
  end