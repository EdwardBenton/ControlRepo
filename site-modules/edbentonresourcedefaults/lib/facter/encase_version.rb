Facter.add('encase_version') do
    confine :osfamily => :windows
    setcode do
      begin
        if File.exist?('C:\\Windows\\System32\\enstart64.exe')
          version = Facter::Util::Resolution.exec(%q[powershell "(Get-Item 'C:\\Windows\\System32\\AppHostRegistrationVerifier.exe').VersionInfo.FileVersion"])
          version.strip
        else
          'not installed'
        end
      rescue
        'not installed'
      end
    end
  end