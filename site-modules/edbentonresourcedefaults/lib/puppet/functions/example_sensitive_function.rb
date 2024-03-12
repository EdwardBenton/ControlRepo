Puppet::Functions.create_function(:example_sensitive_function) do
    dispatch :should_to_s do
      param 'Sensitive', :newvalue
    end

    def should_to_s(newvalue)
      if @resource[:show_diff] == :true && Puppet[:show_diff]
        newvalue
      elsif @resource[:show_diff] == :md5 && Puppet[:show_diff]
        Sensitive("{md5}#{Digest::MD5.hexdigest(newvalue.unwrap.to_s)}")
      else
        Sensitive('[redacted sensitive information]')
      end
    end

    dispatch :is_to_s do
      param 'Sensitive', :value
    end

    def is_to_s(value)
      should_to_s(value)
    end
  end
