Facter.add('testcaching') do
  setcode do
    "test_#{Time.now.strftime('%Y-%m-%d_%H:%M:%S')}"
  end
end
