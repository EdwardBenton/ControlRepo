Facter.add('encase_version') do
        confine :osfamily => :windows
        setcode do
          begin
            version = Facter::Util::Resolution.exec(%q[powershell "(Get-Item 'C:\\Windows\\System32\\enstart64.exe').VersionInfo.FileVersion"])
            version.strip
          rescue
            'not installed'
          end
        end
      end