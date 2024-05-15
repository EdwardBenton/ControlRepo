Facter.add('encase_version') do
    confine :osfamily => :windows
    setcode do
    begin
    status = nil
    version = Facter::Util::Resolution.exec(%q[powershell "echo $(wmic datafile "C:\\Windows\\System32\\enstart64.exe" get Version /value)"])
    status = version.gsub /^$\n/, ''
    status
    rescue
    status = 'not installed'
    end
    end
    end    