Facter.add(:dnfavailable) do
setcode do
result = system('dnf --version > /dev/null 2>&1')
puts result ? "true" : "false"
end
end