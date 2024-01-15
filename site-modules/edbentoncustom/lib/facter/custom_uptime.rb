Facter.add('uptime_hours') do
    setcode 'uptime -s | awk -F " " "{print$2}"'
    end